import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:path_provider/path_provider.dart';

part 'video_recording_during_identification_event.dart';
part 'video_recording_during_identification_state.dart';
part 'video_recording_during_identification_bloc.freezed.dart';

@injectable
class VideoRecordingDuringIdentificationBloc extends Bloc<
    VideoRecordingDuringIdentificationEvent,
    VideoRecordingDuringIdentificationState> {
  VideoRecordingDuringIdentificationBloc()
      : super(VideoRecordingDuringIdentificationState.initial()) {
    on<VideoRecordingDuringIdentificationEvent>(
      (event, emit) async {
        await event.map(
          initialized: (e) async {
            final cameras = await availableCameras();
            if (cameras.isNotEmpty) {
              final frontCamera = cameras.firstWhere(
                (camera) => camera.lensDirection == CameraLensDirection.front,
                orElse: () => cameras[0],
              );

              final controller = CameraController(
                frontCamera,
                ResolutionPreset.medium,
              );

              if (!(controller.value.isInitialized)) {
                await controller.initialize();
              }

              emit(
                state.copyWith(
                  controller: controller,
                  capturedVideo: null,
                ),
              );
            } else {
              Utils.liveness_detectionPrint('Нет доступных камер');
            }
          },
          recordingStarted: (e) async {
            if (!state.controller!.value.isInitialized) return;
            // final path = await _getVideoPath();
            await state.controller!.startVideoRecording();

            emit(
              state.copyWith(
                isRecording: true,
              ),
            );
          },
          recordingStoped: (e) async {
            if (!state.controller!.value.isRecordingVideo) return;
            final xFile = await state.controller!.stopVideoRecording();
            final tempFile = File(xFile.path);

            // final mp4File = await _convertToMp4(tempFile);

            getIt<PassportFormBloc>().add(
              PassportFormEvent.confirmationVideoAdded(
                confirmationVideo: tempFile,
              ),
            );

            getIt<LivenessDetectionBloc>().add(
              LivenessDetectionEvent.confirmationVideoCaptured(
                capturedVideo: tempFile,
              ),
            );

            emit(
              state.copyWith(
                isRecording: false,
                capturedVideo: tempFile,
              ),
            );

            Utils.liveness_detectionLog('Записано видео: ${xFile.path}');
          },
          retryButtonPressed: (_) {
            add(const VideoRecordingDuringIdentificationEvent.initialized());
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    state.controller!.dispose();
    return super.close();
  }

  // Future<File> _convertToMp4(File inputFile) async {
  //   final appDir = await getApplicationDocumentsDirectory();
  //   final outputPath =
  //       '${appDir.path}/output_${DateTime.now().millisecondsSinceEpoch}.mp4';

  //   final command =
  //       '-i "${inputFile.path}" -c:v libx264 -preset ultrafast -crf 23 "$outputPath"';

  //   await FFmpegKit.execute(command);

  //   return File(outputPath);
  // }
}

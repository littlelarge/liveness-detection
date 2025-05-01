import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

part 'video_recording_during_identification_event.dart';
part 'video_recording_during_identification_state.dart';
part 'video_recording_during_identification_bloc.freezed.dart';

@lazySingleton
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
            final file = File(xFile.path);

            getIt<PassportFormBloc>().add(
              PassportFormEvent.confirmationVideoAdded(
                confirmationVideo: file,
              ),
            );

            getIt<LivenessDetectionBloc>().add(
              LivenessDetectionEvent.confirmationVideoCaptured(
                capturedVideo: file,
              ),
            );

            emit(
              state.copyWith(
                isRecording: false,
                capturedVideo: file,
              ),
            );

            Utils.liveness_detectionLog('Записано видео: ${xFile.path}');
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
}

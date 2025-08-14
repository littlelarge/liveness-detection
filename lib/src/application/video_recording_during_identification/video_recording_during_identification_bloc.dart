import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

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
            try {
              // Dispose of any existing controller to prevent memory leaks
              await state.controller?.dispose();

              final cameras = await availableCameras();
              if (cameras.isEmpty) {
                Utils.liveness_detectionPrint('No cameras available');
                emit(state.copyWith(error: 'No cameras available'));
                return;
              }

              final frontCamera = cameras.firstWhere(
                (camera) => camera.lensDirection == CameraLensDirection.front,
                orElse: () => cameras[0],
              );

              final controller = CameraController(
                frontCamera,
                ResolutionPreset.medium,
                enableAudio: true, // Enable audio for liveness detection
              );

              try {
                await controller.initialize();
                emit(state.copyWith(
                  controller: controller,
                  camera: frontCamera,
                  capturedVideo: null,
                  videoPath: null,
                  error: null,
                ));
              } catch (e) {
                Utils.liveness_detectionPrint('Camera initialization failed: $e');
                emit(state.copyWith(error: 'Camera initialization failed: $e'));
                await controller.dispose();
              }
            } catch (e) {
              Utils.liveness_detectionPrint('Error fetching cameras: $e');
              emit(state.copyWith(error: 'Error fetching cameras: $e'));
            }
          },
          recordingStarted: (e) async {
            if (state.controller == null || !state.controller!.value.isInitialized) {
              emit(state.copyWith(error: 'Camera not initialized'));
              return;
            }

            try {
              final appDir = await getApplicationDocumentsDirectory();
              final videoDir = '${appDir.path}/Videos';
              await Directory(videoDir).create(recursive: true);
              final filePath = '$videoDir/${DateTime.now().millisecondsSinceEpoch}.mp4';

              await state.controller!.startVideoRecording();
              emit(state.copyWith(
                isRecording: true,
                videoPath: filePath,
                error: null,
              ));
            } catch (e) {
              Utils.liveness_detectionPrint('Failed to start recording: $e');
              emit(state.copyWith(error: 'Failed to start recording: $e'));
            }
          },
          recordingStoped: (e) async {
            if (state.controller == null || !state.controller!.value.isRecordingVideo) {
              emit(state.copyWith(error: 'Not recording'));
              return;
            }

            try {
              final xFile = await state.controller!.stopVideoRecording();
              final tempFile = File(xFile.path);

              // Save to the specified path
              final savedFile = await tempFile.copy(state.videoPath!);

              // Optional: Convert to MP4 if necessary (e.g., for iOS MOV files)
              // final mp4File = await _convertToMp4(savedFile);

              // Notify other BLoCs
              getIt<PassportFormBloc>().add(
                PassportFormEvent.confirmationVideoAdded(confirmationVideo: savedFile),
              );
              getIt<LivenessDetectionBloc>().add(
                LivenessDetectionEvent.confirmationVideoCaptured(capturedVideo: savedFile),
              );

              emit(state.copyWith(
                isRecording: false,
                capturedVideo: savedFile,
                error: null,
              ));

              Utils.liveness_detectionLog('Video saved to: ${savedFile.path}');

              // Clean up temporary file
              if (await tempFile.exists()) {
                await tempFile.delete();
              }
            } catch (e) {
              Utils.liveness_detectionPrint('Failed to stop recording: $e');
              emit(state.copyWith(error: 'Failed to stop recording: $e'));
            }
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
    state.controller?.dispose();
    return super.close();
  }

  // Optional: Uncomment and use if MP4 conversion is needed (e.g., for iOS MOV files)
  // Future<File> _convertToMp4(File inputFile) async {
  //   final appDir = await getApplicationDocumentsDirectory();
  //   final outputPath = '${appDir.path}/output_${DateTime.now().millisecondsSinceEpoch}.mp4';
  //
  //   final session = await FFmpegKit.execute(
  //     '-i "${inputFile.path}" -c:v libx264 -preset ultrafast -crf 23 "$outputPath"',
  //   );
  //   final returnCode = await session.getReturnCode();
  //   if (ReturnCode.isSuccess(returnCode)) {
  //     return File(outputPath);
  //   } else {
  //     throw Exception('FFmpeg conversion failed');
  //   }
  // }
}
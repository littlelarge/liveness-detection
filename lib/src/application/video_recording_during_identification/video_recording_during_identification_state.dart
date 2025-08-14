part of 'video_recording_during_identification_bloc.dart';

@freezed
class VideoRecordingDuringIdentificationState
    with _$VideoRecordingDuringIdentificationState {
  const factory VideoRecordingDuringIdentificationState({
    CameraController? controller,
    @Default(false) bool isRecording,
    CameraDescription? camera,
    File? capturedVideo,
    String? videoPath, 
    String? error,
  }) = _VideoRecordingDuringIdentificationState;

  factory VideoRecordingDuringIdentificationState.initial() =>
      const VideoRecordingDuringIdentificationState();
}
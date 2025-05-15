part of 'video_recording_during_identification_bloc.dart';

@freezed
class VideoRecordingDuringIdentificationEvent
    with _$VideoRecordingDuringIdentificationEvent {
  const factory VideoRecordingDuringIdentificationEvent.initialized() =
      _Initialized;
  const factory VideoRecordingDuringIdentificationEvent.recordingStarted() =
      _RecordingStarted;
  const factory VideoRecordingDuringIdentificationEvent.recordingStoped() =
      _RecordingStoped;
  const factory VideoRecordingDuringIdentificationEvent.retryButtonPressed() =
      _RetryButtonPressed;
}

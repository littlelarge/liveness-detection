part of 'liveness_detection_bloc.dart';

@freezed
class LivenessDetectionEvent with _$LivenessDetectionEvent {
  const factory LivenessDetectionEvent.initialized() = _Initialized;
  const factory LivenessDetectionEvent.initCameras() = _InitCameras;
  const factory LivenessDetectionEvent.startDetection() = _StartDetection;
  const factory LivenessDetectionEvent.checkLiveness(Face face) =
      _CheckLiveness;
  const factory LivenessDetectionEvent.resetDetection() = _ResetDetection;
  const factory LivenessDetectionEvent.captureButtonPressed() =
      _CaptureButtonPressed;
}

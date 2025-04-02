part of 'liveness_detection_bloc.dart';

@freezed
class LivenessDetectionState with _$LivenessDetectionState {
  const factory LivenessDetectionState.initial() = _Initial;
  const factory LivenessDetectionState.isDetecting() = _IsDetecting;
  const factory LivenessDetectionState.smileDetected() = _SmileDetected;
  const factory LivenessDetectionState.blinkDetected() = _BlinkDetected;
  const factory LivenessDetectionState.headRightDetected() = _HeadRightDetected;
  const factory LivenessDetectionState.headLeftDetected() = _HeadLeftDetected;
  const factory LivenessDetectionState.headUpDetected() = _HeadUpDetected;
  const factory LivenessDetectionState.headDownDetected() = _HeadDownDetected;
  const factory LivenessDetectionState.capturingFinalImage({
    @Default(false) bool canCapture,
    Uint8List? capturedImage,
  }) = _CapturingFinalImage;
  const factory LivenessDetectionState.livenessConfirmed() = _LivenessConfirmed;
}

part of 'cheburashka_photo_bloc.dart';

@freezed
class CheburashkaPhotoState with _$CheburashkaPhotoState {
  const factory CheburashkaPhotoState({
    CameraController? cameraController,
    Uint8List? capturedImage,
    TPassportResult? compareResult,
  }) = _CheburashkaPhotoState;

  factory CheburashkaPhotoState.initial() => const CheburashkaPhotoState();
}

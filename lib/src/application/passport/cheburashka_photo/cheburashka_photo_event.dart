part of 'cheburashka_photo_bloc.dart';

@freezed
class CheburashkaPhotoEvent with _$CheburashkaPhotoEvent {
  const factory CheburashkaPhotoEvent.initialized() = _Initialized;
  const factory CheburashkaPhotoEvent.takePhotoButtonPressed() =
      _TakePhotoButtonPressed;
  const factory CheburashkaPhotoEvent.retryButtonPressed() =
      _RetryButtonPressed;
  const factory CheburashkaPhotoEvent.confirmButtonPressed() =
      _ConfirmButtonPressed;
}

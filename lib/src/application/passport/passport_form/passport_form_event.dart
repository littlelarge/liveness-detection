part of 'passport_form_bloc.dart';

@freezed
class PassportFormEvent with _$PassportFormEvent {
  const factory PassportFormEvent.initialized() = _Initialized;
  const factory PassportFormEvent.facePhotoUploaded({
    required Uint8List image,
  }) = _FacePhotoUploaded;
  const factory PassportFormEvent.passportUploaded({
    required PassportSide side,
    required Uint8List image,
  }) = _PassportUploaded;
  const factory PassportFormEvent.confirmationVideoAdded({
    required File confirmationVideo,
  }) = _ConfirmationVideoAdded;
}

part of 'passport_form_bloc.dart';

@freezed
class PassportFormState with _$PassportFormState {
  const factory PassportFormState({
    Uint8List? frontSide,
    Uint8List? backSide,
    Uint8List? facePhoto,
    File? confirmationVideo,
  }) = _PassportFormState;

  factory PassportFormState.initial() => const PassportFormState();
}

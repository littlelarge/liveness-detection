part of 'passport_actor_bloc.dart';

@freezed
class PassportActorEvent with _$PassportActorEvent {
  const factory PassportActorEvent.continueButtonPressed({
    required Uint8List frontSide,
    required Uint8List backSide,
    required Uint8List face,
  }) = _ContinueButtonPressed;
}

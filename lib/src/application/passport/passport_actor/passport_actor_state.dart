part of 'passport_actor_bloc.dart';

@freezed
class PassportActorState with _$PassportActorState {
  const factory PassportActorState.initial() = _Initial;
  const factory PassportActorState.inProgress() = _InProgress;
  const factory PassportActorState.checkSuccess() = _CheckSuccess;
  const factory PassportActorState.checkFailure({
    required PassportFailure failure,
  }) = _CheckFailure;
}

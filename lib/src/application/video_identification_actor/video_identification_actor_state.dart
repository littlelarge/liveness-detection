part of 'video_identification_actor_bloc.dart';

@freezed
class VideoIdentificationActorState with _$VideoIdentificationActorState {
  const factory VideoIdentificationActorState.initial() = _Initial;
  const factory VideoIdentificationActorState.inProgress() = _InProgress;
  const factory VideoIdentificationActorState.uploadSuccess() = _UploadSuccess;
  const factory VideoIdentificationActorState.uploadFailure({
    required VideoIdentificationUploadFailure failure,
  }) = _UploadFailure;
}

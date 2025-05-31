part of 'video_identification_actor_bloc.dart';

@freezed
class VideoIdentificationActorEvent with _$VideoIdentificationActorEvent {
  const factory VideoIdentificationActorEvent.videoUploadRequested({
    required File video,
  }) = _VideoUploadRequested;
}

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:liveness_detection/src/domain/video/i_video_identification_repository.dart';
import 'package:liveness_detection/src/domain/video/video_identification_upload_failure.dart';

part 'video_identification_actor_event.dart';
part 'video_identification_actor_state.dart';
part 'video_identification_actor_bloc.freezed.dart';

class VideoIdentificationActorBloc
    extends Bloc<VideoIdentificationActorEvent, VideoIdentificationActorState> {
  VideoIdentificationActorBloc(this.videoIdentificationRepository)
      : super(const VideoIdentificationActorState.initial()) {
    on<VideoIdentificationActorEvent>(
      (event, emit) async {
        await event.map(
          videoUploadRequested: (e) async {
            emit(const VideoIdentificationActorState.inProgress());

            final failureOrSuccess =
                await videoIdentificationRepository.uploadVideo(e.video);

            failureOrSuccess.fold(
              (l) {
                emit(VideoIdentificationActorState.uploadFailure(failure: l));
              },
              (r) {
                emit(const VideoIdentificationActorState.uploadSuccess());
              },
            );
          },
        );
      },
    );
  }

  final IVideoIdentificationRepository videoIdentificationRepository;
}

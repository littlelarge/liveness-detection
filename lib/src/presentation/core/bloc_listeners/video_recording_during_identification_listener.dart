import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/application/video_identification_actor/video_identification_actor_bloc.dart';
import 'package:liveness_detection/src/presentation/core/mappers/video_identification_upload_failure.dart';

void videoIdentificationActorListener(
  BuildContext context,
  VideoIdentificationActorState videoIdentificationActorState,
) {
  videoIdentificationActorState.map(
    initial: (_) {},
    inProgress: (_) {},
    uploadSuccess: (_) {
      context.read<OtpBloc>().add(
            const OtpEvent.codeSended(),
          );
    },
    uploadFailure: (failureState) {
      Utils.showSnackBar(
        context: context,
        text: failureState.failure.autoMap(
          context: context,
        ),
      );
    },
  );
}

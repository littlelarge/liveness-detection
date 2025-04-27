import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';

void livenessDetectionListener(
  BuildContext context,
  LivenessDetectionState livenessDetectionState,
) {
  livenessDetectionState.map(
    initial: (_) {},
    isDetecting: (_) {},
    smileDetected: (_) {},
    blinkDetected: (_) {},
    headRightDetected: (_) {},
    headLeftDetected: (_) {},
    headUpDetected: (_) {},
    headDownDetected: (_) {},
    livenessConfirmed: (_) {
      Utils.showSnackBar(
        context: context,
        text: 'Liveness подтвержден!',
      );
    },
    capturingFinalImage: (state) {
      final capturedImage = state.capturedImage;
      if (capturedImage != null) {
        context.read<PassportFormBloc>().add(
              PassportFormEvent.facePhotoUploaded(
                image: capturedImage,
              ),
            );
      }
    },
    capturingConfirmationVideo: (state) {
      final capturedVideo = state.capturedVideo;
      if (capturedVideo != null) {
        context.read<PassportFormBloc>().add(
              PassportFormEvent.confirmationVideoAdded(
                confirmationVideo: capturedVideo,
              ),
            );
      }
    },
  );
}

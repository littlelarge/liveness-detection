import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveness_detection/application/liveness_detection/liveness_detection_bloc.dart';
import 'package:liveness_detection/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/common/utils.dart';

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
  );
}

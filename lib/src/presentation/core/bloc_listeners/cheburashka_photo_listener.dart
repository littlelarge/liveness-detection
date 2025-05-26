import 'package:flutter/material.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/passport/confirmation_video_recording/confirmation_video_recording_screen.dart';

void cheburashkaPhotoListener(
  BuildContext context,
  CheburashkaPhotoState cheburashkaPhotoState,
) {
  final compareResult = cheburashkaPhotoState.compareResult;

  if (compareResult != null && cheburashkaPhotoState.capturedImage != null) {
    compareResult.fold(
      (l) {
        Utils.showSnackBar(
          context: context,
          text:
              'Произошла ошибка при сверении фото, попробуйте еще раз!\n\n${l.autoMap(context: context)}',
        );
      },
      (r) {
        AppNavigator.push(
          context,
          const ConfirmationVideoRecordingScreen(),
        );
      },
    );
  }
}

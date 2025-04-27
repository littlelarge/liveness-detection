import 'package:flutter/material.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

import 'package:liveness_detection/src/presentation/presentation.dart';

void passportFormListener(
  BuildContext context,
  PassportFormState passportFormState,
) {
  if (passportFormState.facePhoto != null &&
      passportFormState.confirmationVideo != null) {
    AppNavigator.push(
      context,
      const PassportFormScreen(),
    );
  }
}

bool passportFormListenWhen(
  PassportFormState previous,
  PassportFormState current,
) =>
    previous.facePhoto != current.facePhoto;

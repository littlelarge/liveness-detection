import 'package:flutter/material.dart';
import 'package:liveness_detection/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/injection.dart';

import 'package:liveness_detection/presentation/routes/mobile_auto_router.dart';
import 'package:liveness_detection/presentation/routes/mobile_auto_router.gr.dart';

void passportFormListener(
  BuildContext context,
  PassportFormState passportFormState,
) {
  getIt<AppRouter>().replace(
    const PassportFormRoute(),
  );
}

bool passportFormListenWhen(
  PassportFormState previous,
  PassportFormState current,
) =>
    previous.facePhoto != current.facePhoto;

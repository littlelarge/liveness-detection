import 'package:flutter/material.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

void passportActorListener(
  BuildContext context,
  PassportActorState passportActorState,
) {
  passportActorState.map(
    initial: (_) {},
    inProgress: (_) {},
    checkSuccess: (_) {
      // context.pushRoute(const WebViewRoute());

      Utils.showSnackBar(
        context: context,
        text: 'Идентификация прошла успешно!',
      );
    },
    checkFailure: (failureState) {
      Utils.showSnackBar(
        context: context,
        text: failureState.failure.autoMap(context: context),
      );
    },
  );
}

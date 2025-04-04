import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:liveness_detection/application/passport/passport_actor/passport_actor_bloc.dart';
import 'package:liveness_detection/common/utils.dart';
import 'package:liveness_detection/presentation/core/mappers/passport_failure_mapper.dart';
import 'package:liveness_detection/presentation/routes/mobile_auto_router.gr.dart';

void passportActorListener(
  BuildContext context,
  PassportActorState passportActorState,
) {
  passportActorState.map(
    initial: (_) {},
    inProgress: (_) {},
    checkSuccess: (_) {
      context.pushRoute(const WebViewRoute());
      
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

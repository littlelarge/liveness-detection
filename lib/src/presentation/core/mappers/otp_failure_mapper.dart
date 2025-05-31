import 'package:flutter/material.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/core/errors/errors.dart';

extension OtpFailureMapper on OtpFailure {
  String autoMap({required BuildContext context}) {
    return map(
      serverError: (_) => context.errors.serverError,
      unexpectedError: (_) => context.errors.unexpectedError,
      wrongCodeError: (_) => context.errors.wrongCode,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:liveness_detection/domain/passport/passport_failure.dart';
import 'package:liveness_detection/presentation/core/errors/errors.dart';

extension PassportFailureMapper on PassportFailure {
  String autoMap({required BuildContext context}) {
    return map(
      serverError: (_) => context.errors.serverError,
      unexpectedError: (_) => context.errors.unexpectedError,
    );
  }
}

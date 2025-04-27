import 'package:flutter/material.dart';
import 'package:liveness_detection/src/domain/domain.dart';
import 'package:liveness_detection/src/presentation/core/errors/errors.dart';

extension PassportFailureMapper on PassportFailure {
  String autoMap({required BuildContext context}) {
    return map(
      serverError: (_) => context.errors.serverError,
      unexpectedError: (_) => context.errors.unexpectedError,
    );
  }
}

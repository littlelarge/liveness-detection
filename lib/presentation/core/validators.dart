import 'package:flutter/material.dart';
import 'package:liveness_detection/presentation/core/errors/errors.dart';

class Validators {
  static String? validateEmpty({
    required BuildContext context,
    required String? value,
  }) =>
      value!.isEmpty ? context.valueErrors.cantBeEmptyError : null;
}

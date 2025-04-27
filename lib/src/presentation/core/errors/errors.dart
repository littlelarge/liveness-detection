import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

extension ErrorsExtension on BuildContext {
  Errors get errors => getIt<Errors>()..initialize(context: this);
}

@lazySingleton
class Errors {
  late BuildContext context;

  void initialize({required BuildContext context}) {
    this.context = context;
  }

  String get serverError => AppLocalizations.of(context).server_error;
  String get unexpectedError => AppLocalizations.of(context).unexpected_error;
}

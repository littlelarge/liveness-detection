import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'common/common.dart';
import 'common/di/injection.dart';

class LivenessDetectionSdkInitializer {
  static Future<void> initialize() async {
    GetIt.instance.pushNewScope(
      scopeName: 'liveness-module',
    );

    configureInjection(Environment.dev, instance: GetIt.instance);

    HttpOverrides.global = MyHttpOverrides();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}

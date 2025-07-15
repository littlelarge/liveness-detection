import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';

import 'common/di/injection.dart';

class LivenessDetectionSdkInitializer {
  static Future<void> initialize({required String url}) async {
    GetIt.instance.pushNewScope(
      scopeName: 'liveness-module',
    );

    configureInjection(
      Environment.dev,
      instance: GetIt.instance,
      url: url,
    );

    HttpOverrides.global = MyHttpOverrides();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}

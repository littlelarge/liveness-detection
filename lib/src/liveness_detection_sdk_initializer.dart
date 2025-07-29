import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/common/storage_keys.dart';

import 'common/di/injection.dart';

class LivenessDetectionSdkInitializer {
  static Future<void> initialize({
    required String url,
    required String authorizationToken,
  }) async {
    GetIt.instance.pushNewScope(
      scopeName: 'liveness-module',
    );

    const storage = FlutterSecureStorage();

    await storage.write(
      key: StorageKeys.url,
      value: url,
    );

    await storage.write(
      key: StorageKeys.authorizationToken,
      value: authorizationToken,
    );

    configureInjection(
      Environment.dev,
      instance: GetIt.instance,
    );

    HttpOverrides.global = MyHttpOverrides();

    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
}

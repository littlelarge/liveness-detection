import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/common/di/injection.config.dart';
import 'package:liveness_detection/src/infrastructure/core/dio_settings.dart';

final getIt = GetIt.instance;

@injectableInit
GetIt configureInjection(
  String env, {
  GetIt? instance,
}) {
  final getItInstance = instance ?? getIt;

  getItInstance
    ..registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage())
    ..registerSingleton<DioSettings>(DioSettings())
    ..init(environment: env);

  getItInstance<DioSettings>().initialize();

  return getItInstance;
}

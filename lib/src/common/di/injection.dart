import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/common/di/injection.config.dart';
import 'package:liveness_detection/src/infrastructure/core/dio_settings.dart';

final getIt = GetIt.instance;

@injectableInit
GetIt configureInjection(
  String env, {
  GetIt? instance,
  required String url,
}) {
  final getItInstance = instance ?? getIt;

  getItInstance
    ..registerSingleton<DioSettings>(DioSettings(url: url)..initialize())
    ..init(environment: env);

  return getItInstance;
}

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/injection.dart';
import 'package:liveness_detection/infrastructure/core/dio_settings.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  DioSettings get dioSettings => DioSettings();

  @lazySingleton
  Dio get dio => getIt<DioSettings>().dio;
}

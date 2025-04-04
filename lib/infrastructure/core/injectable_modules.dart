import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/infrastructure/core/dio_names.dart';
import 'package:liveness_detection/infrastructure/core/dio_settings.dart';

@module
abstract class FirebaseInjectableModule {
  @Named(DioNames.dio)
  @lazySingleton
  Dio get dio => DioSettings().dio;
}

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/infrastructure/infrastructure.dart';

@module
abstract class FirebaseInjectableModule {
  @Named(DioNames.dio)
  @lazySingleton
  Dio get dio => DioSettings().dio;
}

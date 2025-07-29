import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/infrastructure/core/url_names.dart';
import 'package:liveness_detection/src/infrastructure/infrastructure.dart';

@module
abstract class FirebaseInjectableModule {
  @Named(UrlNames.defaultLink)
  @lazySingleton
  String get defaultLink =>
      'https://${getIt<DioSettings>().url}/documents/?mobile=true';

  @Named(UrlNames.checkedLink)
  @lazySingleton
  String get checkedLink => '$defaultLink&checked=true';

  @Named(DioNames.dio)
  @lazySingleton
  Dio get dio => getIt<DioSettings>().dio;
}

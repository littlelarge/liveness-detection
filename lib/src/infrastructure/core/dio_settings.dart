import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/common/storage_keys.dart';

class DioSettings {
  DioSettings();

  late final Dio dio;
  late final String url;

  Future<void> initialize() async {
    final storage = getIt<FlutterSecureStorage>();

    url = await storage.read(
      key: StorageKeys.url,
    ) ?? '';

    final authorizationToken = await storage.read(
      key: StorageKeys.authorizationToken,
    );

    dio = Dio(
      BaseOptions(
        baseUrl: 'https://$url',
        responseType: ResponseType.json,
        contentType: "application/json; charset=utf-8",
        headers: {
          'Authorization': authorizationToken,
        },
        validateStatus: (status) {
          return status != 403;
        },
      ),
    );
  }
}

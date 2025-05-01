import 'package:dio/dio.dart';

class DioSettings {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://146.190.145.30',
      responseType: ResponseType.json,
      contentType: "application/json; charset=utf-8",
      validateStatus: (status) {
        return status != 403;
      },
    ),
  );
}

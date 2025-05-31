import 'package:dio/dio.dart';

class DioSettings {
  Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://sign.signillion.site',
      responseType: ResponseType.json,
      contentType: "application/json; charset=utf-8",
      headers: {
        'Authorization': 'Bearer 222222',
      },
      validateStatus: (status) {
        return status != 403;
      },
    ),
  );
}

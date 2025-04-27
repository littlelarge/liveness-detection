import 'package:dio/dio.dart';

class DioSettings {
  final CancelToken cancelToken = CancelToken();

  Dio dio = Dio(
    BaseOptions(
      baseUrl: '',
      responseType: ResponseType.json,
      contentType: "application/json; charset=utf-8",
      validateStatus: (status) {
        return status != 403;
      },
    ),
  );
}

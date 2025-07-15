import 'package:dio/dio.dart';

class DioSettings {
  DioSettings({required this.url});

  final String url;

  late final Dio dio;
  
  void initialize() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://$url',
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
}

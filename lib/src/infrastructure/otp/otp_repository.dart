import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';

@LazySingleton(as: IOtpRepository)
final class OtpRepository implements IOtpRepository {
  OtpRepository(@Named(DioNames.dio) this._dio);

  final Dio _dio;

  bool _isWrongCodeError(dynamic responseData) {
    return responseData is Map &&
        responseData.containsKey('detail') &&
        responseData['detail'] == 'Wrong code';
  }

  @override
  Future<TOtpResult> checkSmsCode({
    required String code,
  }) async {
    try {
      final response = await _dio.post(
        '/api/check-sms-code/',
        data: {
          'code': code,
        },
      );

      if (_isWrongCodeError(response.data)) {
        return left(OtpFailure.wrongCodeError('Wrong code'));
      }

      return right(unit);
    } on DioException catch (e) {
      return left(OtpFailure.serverError(e));
    } catch (e) {
      return left(OtpFailure.unexpectedError(e));
    }
  }

  @override
  Future<TOtpResult> sendSmsCode() async {
    try {
      final response = await _dio.post(
        '/api/send-sms-code/',
      );

      return right(unit);
    } on DioException catch (e) {
      return left(OtpFailure.serverError(e));
    } catch (e) {
      return left(OtpFailure.unexpectedError(e));
    }
  }
}

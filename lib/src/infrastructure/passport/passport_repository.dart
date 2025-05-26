import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/domain/domain.dart';
import 'package:liveness_detection/src/infrastructure/infrastructure.dart';

@LazySingleton(as: IPassportRepository)
final class PassportRepository implements IPassportRepository {
  PassportRepository(@Named(DioNames.dio) this._dio);

  final Dio _dio;

  @override
  Future<TPassportResult> checkPassport({
    required Uint8List frontSide,
    required Uint8List backSide,
    required Uint8List face,
  }) async {
    try {
      final payload = {
        'photo': face,
        'passport1': frontSide,
        'passport2': backSide,
      };

      // final response = await _dio.post(
      //   '/api/accounts/check_pasport/',
      //   data: payload,
      // );

      return right(unit);
    } on DioException catch (e) {
      return left(PassportFailure.serverError(e));
    } catch (e) {
      return left(PassportFailure.unexpectedError(e));
    }
  }

  @override
  Future<TPassportResult> compareCheburashkaPhoto({
    required Uint8List image,
  }) async {
    try {
      final payloada = {
        'photo': image,
      };

      final response = await _dio.post(
        '/api/upload-pasport-photo/',
      );

      return right(unit);
    } on DioException catch (e) {
      //    400: Missing base64 photo

      // 400: Only .jpg/.jpeg and .png are allowed

      // 413: File too large. Max size is 5 MB.

      // 502: Facetagr error: ...

      // 500: Внутренняя ошибка

      // final statusCode = e.response?.statusCode;
      // final message = e.message;
      // if (statusCode == 400) {

      //   return left(PassportFailure.missingPhoto());
      // }
      const detail = 'detail';
      final errorMessage = e.response?.data is Map<String, dynamic> &&
              e.response!.data.containsKey(detail)
          ? e.response!.data[detail] as String
          : null;
      if (errorMessage != null) {
        return left(PassportFailure.csrfFailed(errorMessage));
      } else {
        return left(PassportFailure.serverError(e));
      }
    } catch (e) {
      return left(PassportFailure.unexpectedError(e));
    }
  }
}

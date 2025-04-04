import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/domain/core/typedef/typedefs.dart';
import 'package:liveness_detection/domain/passport/i_passport_repository.dart';
import 'package:liveness_detection/domain/passport/passport_failure.dart';
import 'package:liveness_detection/infrastructure/core/dio_names.dart';

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
}

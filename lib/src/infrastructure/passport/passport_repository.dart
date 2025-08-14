import 'dart:convert';
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
      final imageBase64String = base64Encode(image);

      final payload = {
        'photo': imageBase64String,
      };

      final response = await _dio.post(
        '/api/upload-pasport-photo/',
        data: payload,
      );

      final data = response.data;

      // if (data is Map<String, dynamic>) {
      //   final status = data['status']?.toString();
      //   final facetagrStatus = data['facetagr_status']?.toString();

      //   if ((status != 'success' || status != 'photo_valid')) {
      //     if (facetagrStatus != null) {
      //       if (facetagrStatus != '1001' || facetagrStatus != 'photo valid') {
      //         return left(_mapFacetagrErrorToFailure(facetagrStatus, data));
      //       }
      //     }
      //   }
      // }
      if (response.statusCode != 200) {
        return left(
          PassportFailure.uploadAndCheckError(
            'Ошибка загрузки и проверки изображения',
          ),
        );
      }

      return right(unit);
    } on DioException catch (e) {
      return left(PassportFailure.serverError(e));
    } catch (e) {
      return left(PassportFailure.unexpectedError(e));
    }
  }

  PassportFailure _mapFacetagrErrorToFailure(String code, Object error) {
    switch (code) {
      case '2002':
        return PassportFailure.authenticationFailed(error);
      case '4001':
        return PassportFailure.noFaceInLive(error);
      case '4002':
        return PassportFailure.faceTooSmallLive(error);
      case '4003':
        return PassportFailure.faceBlurryLive(error);
      case '4005':
        return PassportFailure.faceNotCenteredLive(error);
      case '4006':
        return PassportFailure.invalidImageFormatLive(error);
      case '4007':
        return PassportFailure.livenessCheckFailed(error);
      case '4008':
        return PassportFailure.invalidJson(error);
      case '4009':
        return PassportFailure.noFaceInIdCard(error);
      case '4010':
        return PassportFailure.faceTooSmallInIdCard(error);
      case '4011':
        return PassportFailure.faceBlurryInIdCard(error);
      case '4012':
        return PassportFailure.faceNotVisibleInIdCard(error);
      case '4013':
        return PassportFailure.invalidImageFormatIdCard(error);
      case '6001':
        return PassportFailure.imageIsEmpty(error);
      case '6002':
        return PassportFailure.imageMustContainTwoFaces(error);
      default:
        return PassportFailure.unexpectedError(
          'Unknown facetagr_status: $code',
        );
    }
  }
}

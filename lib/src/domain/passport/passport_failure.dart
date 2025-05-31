import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:liveness_detection/src/common/common.dart';

part 'passport_failure.freezed.dart';

@freezed
abstract class PassportFailure with _$PassportFailure {
  PassportFailure._() {
    Utils.liveness_detectionPrint(error);
  }
  // Общие ошибки
  factory PassportFailure.csrfFailed(Object error) = _CSRFFailed;
  factory PassportFailure.serverError(Object error) = _ServerError;
  factory PassportFailure.unexpectedError(Object error) = _UnexpectedError;

  // facetagr errors
  factory PassportFailure.verificationSuccess(Object error) =
      _VerificationSuccess; // 1001
  factory PassportFailure.authenticationFailed(Object error) =
      _AuthenticationFailed; // 2002
  factory PassportFailure.noFaceInLive(Object error) = _NoFaceInLive; // 4001
  factory PassportFailure.faceTooSmallLive(Object error) =
      _FaceTooSmallLive; // 4002
  factory PassportFailure.faceBlurryLive(Object error) =
      _FaceBlurryLive; // 4003
  factory PassportFailure.faceNotCenteredLive(Object error) =
      _FaceNotCenteredLive; // 4005
  factory PassportFailure.invalidImageFormatLive(Object error) =
      _InvalidImageFormatLive; // 4006
  factory PassportFailure.livenessCheckFailed(Object error) =
      _LivenessCheckFailed; // 4007
  factory PassportFailure.invalidJson(Object error) = _InvalidJson; // 4008
  factory PassportFailure.noFaceInIdCard(Object error) =
      _NoFaceInIdCard; // 4009
  factory PassportFailure.faceTooSmallInIdCard(Object error) =
      _FaceTooSmallInIdCard; // 4010
  factory PassportFailure.faceBlurryInIdCard(Object error) =
      _FaceBlurryInIdCard; // 4011
  factory PassportFailure.faceNotVisibleInIdCard(Object error) =
      _FaceNotVisibleInIdCard; // 4012
  factory PassportFailure.invalidImageFormatIdCard(Object error) =
      _InvalidImageFormatIdCard; // 4013
  factory PassportFailure.imageIsEmpty(Object error) = _ImageIsEmpty; // 6001
  factory PassportFailure.imageMustContainTwoFaces(Object error) =
      _ImageMustContainTwoFaces; // 6002
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';

part 'otp_failure.freezed.dart';

@freezed
abstract class OtpFailure with _$OtpFailure {
  OtpFailure._() {
    Utils.liveness_detectionPrint(error);
  }

  factory OtpFailure.serverError(Object error) = _ServerError;
  factory OtpFailure.unexpectedError(Object error) = _UnexpectedError;
}

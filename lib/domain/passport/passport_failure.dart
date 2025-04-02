import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:liveness_detection/common/utils.dart';

part 'passport_failure.freezed.dart';

@freezed
abstract class PassportFailure with _$PassportFailure {
  PassportFailure._() {
    Utils.liveness_detectionPrint(error);
  }

  factory PassportFailure.serverError(Object error) = _ServerError;
  factory PassportFailure.unexpectedError(Object error) = _UnexpectedError;
}

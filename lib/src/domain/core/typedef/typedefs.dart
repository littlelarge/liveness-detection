import 'package:dartz/dartz.dart';
import 'package:liveness_detection/src/domain/domain.dart';
import 'package:liveness_detection/src/domain/otp/otp_failure.dart';

typedef Value<T> = Either<ValueFailure<T>, T>;

typedef TPassportResult = Either<PassportFailure, Unit>;

typedef TOtpResult = Either<OtpFailure, Unit>;
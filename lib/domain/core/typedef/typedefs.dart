import 'package:dartz/dartz.dart';
import 'package:liveness_detection/domain/core/errors/failures.dart';
import 'package:liveness_detection/domain/passport/passport_failure.dart';

typedef Value<T> = Either<ValueFailure<T>, T>;

typedef TPassportResult = Either<PassportFailure, Unit>;

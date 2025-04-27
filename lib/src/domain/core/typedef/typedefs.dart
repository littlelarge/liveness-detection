import 'package:dartz/dartz.dart';
import 'package:liveness_detection/src/domain/domain.dart';

typedef Value<T> = Either<ValueFailure<T>, T>;

typedef TPassportResult = Either<PassportFailure, Unit>;

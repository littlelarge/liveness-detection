import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:liveness_detection/src/domain/domain.dart';

abstract class ValueObject<T> extends Equatable {
  const ValueObject(this.value);

  final Value<T> value;

  @override
  List<Object?> get props => [value];

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueError(f),
      id,
    );
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      left,
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();
}

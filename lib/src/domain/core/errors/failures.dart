import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
sealed class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required T failedValue}) =
      _InvalidEmail<T>;

  const factory ValueFailure.cantBeEmpty({required T failedValue}) =
      _CantBeEmpty<T>;

  const factory ValueFailure.invalidPassword({
    required bool hasAtLeast8Characters,
    required bool hasNotIncludeNameOrEmail,
    required bool hasAtLeastOneSymbolOrNumber,
    required bool hasNotContainSpaces,
    required T failedValue,
  }) = _ShortPassword<T>;

  const factory ValueFailure.invalidIp({required T failedValue}) =
      _InvalidIp<T>;

  const factory ValueFailure.invalidUrl({required T failedValue}) =
      _InvalidUrl<T>;

  const factory ValueFailure.invalidFormat({required T failedValue}) =
      _InvalidFormat<T>;

  const factory ValueFailure.invalidPhoneNumber({required T failedValue}) =
      _InvalidPhoneNumber<T>;
}

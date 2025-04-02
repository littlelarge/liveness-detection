// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value,
          $Res Function(_$InvalidEmailImpl<T>) then) =
      __$$InvalidEmailImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>>
    implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(
      _$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmailImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailImpl<T> implements _InvalidEmail<T> {
  const _$InvalidEmailImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail({required final T failedValue}) =
      _$InvalidEmailImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CantBeEmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$CantBeEmptyImplCopyWith(_$CantBeEmptyImpl<T> value,
          $Res Function(_$CantBeEmptyImpl<T>) then) =
      __$$CantBeEmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$CantBeEmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$CantBeEmptyImpl<T>>
    implements _$$CantBeEmptyImplCopyWith<T, $Res> {
  __$$CantBeEmptyImplCopyWithImpl(
      _$CantBeEmptyImpl<T> _value, $Res Function(_$CantBeEmptyImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$CantBeEmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CantBeEmptyImpl<T> implements _CantBeEmpty<T> {
  const _$CantBeEmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.cantBeEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CantBeEmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CantBeEmptyImplCopyWith<T, _$CantBeEmptyImpl<T>> get copyWith =>
      __$$CantBeEmptyImplCopyWithImpl<T, _$CantBeEmptyImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return cantBeEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return cantBeEmpty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (cantBeEmpty != null) {
      return cantBeEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return cantBeEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return cantBeEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (cantBeEmpty != null) {
      return cantBeEmpty(this);
    }
    return orElse();
  }
}

abstract class _CantBeEmpty<T> implements ValueFailure<T> {
  const factory _CantBeEmpty({required final T failedValue}) =
      _$CantBeEmptyImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CantBeEmptyImplCopyWith<T, _$CantBeEmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordImplCopyWith(_$ShortPasswordImpl<T> value,
          $Res Function(_$ShortPasswordImpl<T>) then) =
      __$$ShortPasswordImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool hasAtLeast8Characters,
      bool hasNotIncludeNameOrEmail,
      bool hasAtLeastOneSymbolOrNumber,
      bool hasNotContainSpaces,
      T failedValue});
}

/// @nodoc
class __$$ShortPasswordImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ShortPasswordImpl<T>>
    implements _$$ShortPasswordImplCopyWith<T, $Res> {
  __$$ShortPasswordImplCopyWithImpl(_$ShortPasswordImpl<T> _value,
      $Res Function(_$ShortPasswordImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasAtLeast8Characters = null,
    Object? hasNotIncludeNameOrEmail = null,
    Object? hasAtLeastOneSymbolOrNumber = null,
    Object? hasNotContainSpaces = null,
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPasswordImpl<T>(
      hasAtLeast8Characters: null == hasAtLeast8Characters
          ? _value.hasAtLeast8Characters
          : hasAtLeast8Characters // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotIncludeNameOrEmail: null == hasNotIncludeNameOrEmail
          ? _value.hasNotIncludeNameOrEmail
          : hasNotIncludeNameOrEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      hasAtLeastOneSymbolOrNumber: null == hasAtLeastOneSymbolOrNumber
          ? _value.hasAtLeastOneSymbolOrNumber
          : hasAtLeastOneSymbolOrNumber // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNotContainSpaces: null == hasNotContainSpaces
          ? _value.hasNotContainSpaces
          : hasNotContainSpaces // ignore: cast_nullable_to_non_nullable
              as bool,
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPasswordImpl<T> implements _ShortPassword<T> {
  const _$ShortPasswordImpl(
      {required this.hasAtLeast8Characters,
      required this.hasNotIncludeNameOrEmail,
      required this.hasAtLeastOneSymbolOrNumber,
      required this.hasNotContainSpaces,
      required this.failedValue});

  @override
  final bool hasAtLeast8Characters;
  @override
  final bool hasNotIncludeNameOrEmail;
  @override
  final bool hasAtLeastOneSymbolOrNumber;
  @override
  final bool hasNotContainSpaces;
  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPassword(hasAtLeast8Characters: $hasAtLeast8Characters, hasNotIncludeNameOrEmail: $hasNotIncludeNameOrEmail, hasAtLeastOneSymbolOrNumber: $hasAtLeastOneSymbolOrNumber, hasNotContainSpaces: $hasNotContainSpaces, failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPasswordImpl<T> &&
            (identical(other.hasAtLeast8Characters, hasAtLeast8Characters) ||
                other.hasAtLeast8Characters == hasAtLeast8Characters) &&
            (identical(
                    other.hasNotIncludeNameOrEmail, hasNotIncludeNameOrEmail) ||
                other.hasNotIncludeNameOrEmail == hasNotIncludeNameOrEmail) &&
            (identical(other.hasAtLeastOneSymbolOrNumber,
                    hasAtLeastOneSymbolOrNumber) ||
                other.hasAtLeastOneSymbolOrNumber ==
                    hasAtLeastOneSymbolOrNumber) &&
            (identical(other.hasNotContainSpaces, hasNotContainSpaces) ||
                other.hasNotContainSpaces == hasNotContainSpaces) &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      hasAtLeast8Characters,
      hasNotIncludeNameOrEmail,
      hasAtLeastOneSymbolOrNumber,
      hasNotContainSpaces,
      const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      __$$ShortPasswordImplCopyWithImpl<T, _$ShortPasswordImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidPassword(hasAtLeast8Characters, hasNotIncludeNameOrEmail,
        hasAtLeastOneSymbolOrNumber, hasNotContainSpaces, failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidPassword?.call(
        hasAtLeast8Characters,
        hasNotIncludeNameOrEmail,
        hasAtLeastOneSymbolOrNumber,
        hasNotContainSpaces,
        failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(hasAtLeast8Characters, hasNotIncludeNameOrEmail,
          hasAtLeastOneSymbolOrNumber, hasNotContainSpaces, failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueFailure<T> {
  const factory _ShortPassword(
      {required final bool hasAtLeast8Characters,
      required final bool hasNotIncludeNameOrEmail,
      required final bool hasAtLeastOneSymbolOrNumber,
      required final bool hasNotContainSpaces,
      required final T failedValue}) = _$ShortPasswordImpl<T>;

  bool get hasAtLeast8Characters;
  bool get hasNotIncludeNameOrEmail;
  bool get hasAtLeastOneSymbolOrNumber;
  bool get hasNotContainSpaces;
  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShortPasswordImplCopyWith<T, _$ShortPasswordImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidIpImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidIpImplCopyWith(
          _$InvalidIpImpl<T> value, $Res Function(_$InvalidIpImpl<T>) then) =
      __$$InvalidIpImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidIpImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidIpImpl<T>>
    implements _$$InvalidIpImplCopyWith<T, $Res> {
  __$$InvalidIpImplCopyWithImpl(
      _$InvalidIpImpl<T> _value, $Res Function(_$InvalidIpImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidIpImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidIpImpl<T> implements _InvalidIp<T> {
  const _$InvalidIpImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidIp(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidIpImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidIpImplCopyWith<T, _$InvalidIpImpl<T>> get copyWith =>
      __$$InvalidIpImplCopyWithImpl<T, _$InvalidIpImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidIp(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidIp?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidIp != null) {
      return invalidIp(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidIp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidIp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidIp != null) {
      return invalidIp(this);
    }
    return orElse();
  }
}

abstract class _InvalidIp<T> implements ValueFailure<T> {
  const factory _InvalidIp({required final T failedValue}) = _$InvalidIpImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidIpImplCopyWith<T, _$InvalidIpImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidUrlImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidUrlImplCopyWith(
          _$InvalidUrlImpl<T> value, $Res Function(_$InvalidUrlImpl<T>) then) =
      __$$InvalidUrlImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidUrlImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidUrlImpl<T>>
    implements _$$InvalidUrlImplCopyWith<T, $Res> {
  __$$InvalidUrlImplCopyWithImpl(
      _$InvalidUrlImpl<T> _value, $Res Function(_$InvalidUrlImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidUrlImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidUrlImpl<T> implements _InvalidUrl<T> {
  const _$InvalidUrlImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUrl(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidUrlImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidUrlImplCopyWith<T, _$InvalidUrlImpl<T>> get copyWith =>
      __$$InvalidUrlImplCopyWithImpl<T, _$InvalidUrlImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidUrl(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidUrl?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class _InvalidUrl<T> implements ValueFailure<T> {
  const factory _InvalidUrl({required final T failedValue}) =
      _$InvalidUrlImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidUrlImplCopyWith<T, _$InvalidUrlImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidFormatImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidFormatImplCopyWith(_$InvalidFormatImpl<T> value,
          $Res Function(_$InvalidFormatImpl<T>) then) =
      __$$InvalidFormatImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidFormatImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidFormatImpl<T>>
    implements _$$InvalidFormatImplCopyWith<T, $Res> {
  __$$InvalidFormatImplCopyWithImpl(_$InvalidFormatImpl<T> _value,
      $Res Function(_$InvalidFormatImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidFormatImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidFormatImpl<T> implements _InvalidFormat<T> {
  const _$InvalidFormatImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidFormat(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidFormatImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidFormatImplCopyWith<T, _$InvalidFormatImpl<T>> get copyWith =>
      __$$InvalidFormatImplCopyWithImpl<T, _$InvalidFormatImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidFormat(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidFormat?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat<T> implements ValueFailure<T> {
  const factory _InvalidFormat({required final T failedValue}) =
      _$InvalidFormatImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidFormatImplCopyWith<T, _$InvalidFormatImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPhoneNumberImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPhoneNumberImplCopyWith(_$InvalidPhoneNumberImpl<T> value,
          $Res Function(_$InvalidPhoneNumberImpl<T>) then) =
      __$$InvalidPhoneNumberImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidPhoneNumberImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidPhoneNumberImpl<T>>
    implements _$$InvalidPhoneNumberImplCopyWith<T, $Res> {
  __$$InvalidPhoneNumberImplCopyWithImpl(_$InvalidPhoneNumberImpl<T> _value,
      $Res Function(_$InvalidPhoneNumberImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPhoneNumberImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumberImpl<T> implements _InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumberImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhoneNumberImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidPhoneNumberImplCopyWith<T, _$InvalidPhoneNumberImpl<T>>
      get copyWith => __$$InvalidPhoneNumberImplCopyWithImpl<T,
          _$InvalidPhoneNumberImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) cantBeEmpty,
    required TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)
        invalidPassword,
    required TResult Function(T failedValue) invalidIp,
    required TResult Function(T failedValue) invalidUrl,
    required TResult Function(T failedValue) invalidFormat,
    required TResult Function(T failedValue) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue)? invalidEmail,
    TResult? Function(T failedValue)? cantBeEmpty,
    TResult? Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult? Function(T failedValue)? invalidIp,
    TResult? Function(T failedValue)? invalidUrl,
    TResult? Function(T failedValue)? invalidFormat,
    TResult? Function(T failedValue)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? cantBeEmpty,
    TResult Function(
            bool hasAtLeast8Characters,
            bool hasNotIncludeNameOrEmail,
            bool hasAtLeastOneSymbolOrNumber,
            bool hasNotContainSpaces,
            T failedValue)?
        invalidPassword,
    TResult Function(T failedValue)? invalidIp,
    TResult Function(T failedValue)? invalidUrl,
    TResult Function(T failedValue)? invalidFormat,
    TResult Function(T failedValue)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_CantBeEmpty<T> value) cantBeEmpty,
    required TResult Function(_ShortPassword<T> value) invalidPassword,
    required TResult Function(_InvalidIp<T> value) invalidIp,
    required TResult Function(_InvalidUrl<T> value) invalidUrl,
    required TResult Function(_InvalidFormat<T> value) invalidFormat,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult? Function(_ShortPassword<T> value)? invalidPassword,
    TResult? Function(_InvalidIp<T> value)? invalidIp,
    TResult? Function(_InvalidUrl<T> value)? invalidUrl,
    TResult? Function(_InvalidFormat<T> value)? invalidFormat,
    TResult? Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_CantBeEmpty<T> value)? cantBeEmpty,
    TResult Function(_ShortPassword<T> value)? invalidPassword,
    TResult Function(_InvalidIp<T> value)? invalidIp,
    TResult Function(_InvalidUrl<T> value)? invalidUrl,
    TResult Function(_InvalidFormat<T> value)? invalidFormat,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory _InvalidPhoneNumber({required final T failedValue}) =
      _$InvalidPhoneNumberImpl<T>;

  @override
  T get failedValue;

  /// Create a copy of ValueFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidPhoneNumberImplCopyWith<T, _$InvalidPhoneNumberImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

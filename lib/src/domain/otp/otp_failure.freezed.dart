// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpFailure {
  Object get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) wrongCodeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? wrongCodeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? wrongCodeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_WrongCodeError value) wrongCodeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_WrongCodeError value)? wrongCodeError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_WrongCodeError value)? wrongCodeError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpFailureCopyWith<OtpFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpFailureCopyWith<$Res> {
  factory $OtpFailureCopyWith(
          OtpFailure value, $Res Function(OtpFailure) then) =
      _$OtpFailureCopyWithImpl<$Res, OtpFailure>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$OtpFailureCopyWithImpl<$Res, $Val extends OtpFailure>
    implements $OtpFailureCopyWith<$Res> {
  _$OtpFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res>
    implements $OtpFailureCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$OtpFailureCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ServerErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$ServerErrorImpl extends _ServerError {
  _$ServerErrorImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'OtpFailure.serverError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      __$$ServerErrorImplCopyWithImpl<_$ServerErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) wrongCodeError,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? wrongCodeError,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? wrongCodeError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_WrongCodeError value) wrongCodeError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_WrongCodeError value)? wrongCodeError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_WrongCodeError value)? wrongCodeError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends OtpFailure {
  factory _ServerError(final Object error) = _$ServerErrorImpl;
  _ServerError._() : super._();

  @override
  Object get error;

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res>
    implements $OtpFailureCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$OtpFailureCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UnexpectedErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$UnexpectedErrorImpl extends _UnexpectedError {
  _$UnexpectedErrorImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'OtpFailure.unexpectedError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      __$$UnexpectedErrorImplCopyWithImpl<_$UnexpectedErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) wrongCodeError,
  }) {
    return unexpectedError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? wrongCodeError,
  }) {
    return unexpectedError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? wrongCodeError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_WrongCodeError value) wrongCodeError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_WrongCodeError value)? wrongCodeError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_WrongCodeError value)? wrongCodeError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError extends OtpFailure {
  factory _UnexpectedError(final Object error) = _$UnexpectedErrorImpl;
  _UnexpectedError._() : super._();

  @override
  Object get error;

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WrongCodeErrorImplCopyWith<$Res>
    implements $OtpFailureCopyWith<$Res> {
  factory _$$WrongCodeErrorImplCopyWith(_$WrongCodeErrorImpl value,
          $Res Function(_$WrongCodeErrorImpl) then) =
      __$$WrongCodeErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$WrongCodeErrorImplCopyWithImpl<$Res>
    extends _$OtpFailureCopyWithImpl<$Res, _$WrongCodeErrorImpl>
    implements _$$WrongCodeErrorImplCopyWith<$Res> {
  __$$WrongCodeErrorImplCopyWithImpl(
      _$WrongCodeErrorImpl _value, $Res Function(_$WrongCodeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$WrongCodeErrorImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$WrongCodeErrorImpl extends _WrongCodeError {
  _$WrongCodeErrorImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'OtpFailure.wrongCodeError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WrongCodeErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WrongCodeErrorImplCopyWith<_$WrongCodeErrorImpl> get copyWith =>
      __$$WrongCodeErrorImplCopyWithImpl<_$WrongCodeErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) wrongCodeError,
  }) {
    return wrongCodeError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? wrongCodeError,
  }) {
    return wrongCodeError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? wrongCodeError,
    required TResult orElse(),
  }) {
    if (wrongCodeError != null) {
      return wrongCodeError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_WrongCodeError value) wrongCodeError,
  }) {
    return wrongCodeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_WrongCodeError value)? wrongCodeError,
  }) {
    return wrongCodeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_WrongCodeError value)? wrongCodeError,
    required TResult orElse(),
  }) {
    if (wrongCodeError != null) {
      return wrongCodeError(this);
    }
    return orElse();
  }
}

abstract class _WrongCodeError extends OtpFailure {
  factory _WrongCodeError(final Object error) = _$WrongCodeErrorImpl;
  _WrongCodeError._() : super._();

  @override
  Object get error;

  /// Create a copy of OtpFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WrongCodeErrorImplCopyWith<_$WrongCodeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

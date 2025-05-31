// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_identification_upload_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoIdentificationUploadFailure {
  Object get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) invalidFormat,
    required TResult Function(Object error) tooLarge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? invalidFormat,
    TResult? Function(Object error)? tooLarge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? invalidFormat,
    TResult Function(Object error)? tooLarge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_TooLarge value) tooLarge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_TooLarge value)? tooLarge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_TooLarge value)? tooLarge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoIdentificationUploadFailureCopyWith<VideoIdentificationUploadFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoIdentificationUploadFailureCopyWith<$Res> {
  factory $VideoIdentificationUploadFailureCopyWith(
          VideoIdentificationUploadFailure value,
          $Res Function(VideoIdentificationUploadFailure) then) =
      _$VideoIdentificationUploadFailureCopyWithImpl<$Res,
          VideoIdentificationUploadFailure>;
  @useResult
  $Res call({Object error});
}

/// @nodoc
class _$VideoIdentificationUploadFailureCopyWithImpl<$Res,
        $Val extends VideoIdentificationUploadFailure>
    implements $VideoIdentificationUploadFailureCopyWith<$Res> {
  _$VideoIdentificationUploadFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoIdentificationUploadFailure
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
    implements $VideoIdentificationUploadFailureCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$VideoIdentificationUploadFailureCopyWithImpl<$Res,
        _$ServerErrorImpl> implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationUploadFailure
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
    return 'VideoIdentificationUploadFailure.serverError(error: $error)';
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

  /// Create a copy of VideoIdentificationUploadFailure
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
    required TResult Function(Object error) invalidFormat,
    required TResult Function(Object error) tooLarge,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? invalidFormat,
    TResult? Function(Object error)? tooLarge,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? invalidFormat,
    TResult Function(Object error)? tooLarge,
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
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_TooLarge value) tooLarge,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_TooLarge value)? tooLarge,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_TooLarge value)? tooLarge,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends VideoIdentificationUploadFailure {
  factory _ServerError(final Object error) = _$ServerErrorImpl;
  _ServerError._() : super._();

  @override
  Object get error;

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerErrorImplCopyWith<_$ServerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res>
    implements $VideoIdentificationUploadFailureCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$VideoIdentificationUploadFailureCopyWithImpl<$Res,
        _$UnexpectedErrorImpl> implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationUploadFailure
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
    return 'VideoIdentificationUploadFailure.unexpectedError(error: $error)';
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

  /// Create a copy of VideoIdentificationUploadFailure
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
    required TResult Function(Object error) invalidFormat,
    required TResult Function(Object error) tooLarge,
  }) {
    return unexpectedError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? invalidFormat,
    TResult? Function(Object error)? tooLarge,
  }) {
    return unexpectedError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? invalidFormat,
    TResult Function(Object error)? tooLarge,
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
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_TooLarge value) tooLarge,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_TooLarge value)? tooLarge,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_TooLarge value)? tooLarge,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError extends VideoIdentificationUploadFailure {
  factory _UnexpectedError(final Object error) = _$UnexpectedErrorImpl;
  _UnexpectedError._() : super._();

  @override
  Object get error;

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedErrorImplCopyWith<_$UnexpectedErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidFormatImplCopyWith<$Res>
    implements $VideoIdentificationUploadFailureCopyWith<$Res> {
  factory _$$InvalidFormatImplCopyWith(
          _$InvalidFormatImpl value, $Res Function(_$InvalidFormatImpl) then) =
      __$$InvalidFormatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$InvalidFormatImplCopyWithImpl<$Res>
    extends _$VideoIdentificationUploadFailureCopyWithImpl<$Res,
        _$InvalidFormatImpl> implements _$$InvalidFormatImplCopyWith<$Res> {
  __$$InvalidFormatImplCopyWithImpl(
      _$InvalidFormatImpl _value, $Res Function(_$InvalidFormatImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$InvalidFormatImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$InvalidFormatImpl extends _InvalidFormat {
  _$InvalidFormatImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'VideoIdentificationUploadFailure.invalidFormat(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidFormatImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidFormatImplCopyWith<_$InvalidFormatImpl> get copyWith =>
      __$$InvalidFormatImplCopyWithImpl<_$InvalidFormatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) invalidFormat,
    required TResult Function(Object error) tooLarge,
  }) {
    return invalidFormat(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? invalidFormat,
    TResult? Function(Object error)? tooLarge,
  }) {
    return invalidFormat?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? invalidFormat,
    TResult Function(Object error)? tooLarge,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_TooLarge value) tooLarge,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_TooLarge value)? tooLarge,
  }) {
    return invalidFormat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_TooLarge value)? tooLarge,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat extends VideoIdentificationUploadFailure {
  factory _InvalidFormat(final Object error) = _$InvalidFormatImpl;
  _InvalidFormat._() : super._();

  @override
  Object get error;

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InvalidFormatImplCopyWith<_$InvalidFormatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TooLargeImplCopyWith<$Res>
    implements $VideoIdentificationUploadFailureCopyWith<$Res> {
  factory _$$TooLargeImplCopyWith(
          _$TooLargeImpl value, $Res Function(_$TooLargeImpl) then) =
      __$$TooLargeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object error});
}

/// @nodoc
class __$$TooLargeImplCopyWithImpl<$Res>
    extends _$VideoIdentificationUploadFailureCopyWithImpl<$Res, _$TooLargeImpl>
    implements _$$TooLargeImplCopyWith<$Res> {
  __$$TooLargeImplCopyWithImpl(
      _$TooLargeImpl _value, $Res Function(_$TooLargeImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TooLargeImpl(
      null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$TooLargeImpl extends _TooLarge {
  _$TooLargeImpl(this.error) : super._();

  @override
  final Object error;

  @override
  String toString() {
    return 'VideoIdentificationUploadFailure.tooLarge(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooLargeImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TooLargeImplCopyWith<_$TooLargeImpl> get copyWith =>
      __$$TooLargeImplCopyWithImpl<_$TooLargeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object error) serverError,
    required TResult Function(Object error) unexpectedError,
    required TResult Function(Object error) invalidFormat,
    required TResult Function(Object error) tooLarge,
  }) {
    return tooLarge(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object error)? serverError,
    TResult? Function(Object error)? unexpectedError,
    TResult? Function(Object error)? invalidFormat,
    TResult? Function(Object error)? tooLarge,
  }) {
    return tooLarge?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object error)? serverError,
    TResult Function(Object error)? unexpectedError,
    TResult Function(Object error)? invalidFormat,
    TResult Function(Object error)? tooLarge,
    required TResult orElse(),
  }) {
    if (tooLarge != null) {
      return tooLarge(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_TooLarge value) tooLarge,
  }) {
    return tooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_InvalidFormat value)? invalidFormat,
    TResult? Function(_TooLarge value)? tooLarge,
  }) {
    return tooLarge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_TooLarge value)? tooLarge,
    required TResult orElse(),
  }) {
    if (tooLarge != null) {
      return tooLarge(this);
    }
    return orElse();
  }
}

abstract class _TooLarge extends VideoIdentificationUploadFailure {
  factory _TooLarge(final Object error) = _$TooLargeImpl;
  _TooLarge._() : super._();

  @override
  Object get error;

  /// Create a copy of VideoIdentificationUploadFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TooLargeImplCopyWith<_$TooLargeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

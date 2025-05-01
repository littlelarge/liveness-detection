// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() codeSended,
    required TResult Function(String code) codeChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? codeSended,
    TResult? Function(String code)? codeChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? codeSended,
    TResult Function(String code)? codeChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeSended value) codeSended,
    required TResult Function(_CodeChecked value) codeChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeSended value)? codeSended,
    TResult? Function(_CodeChecked value)? codeChecked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeSended value)? codeSended,
    TResult Function(_CodeChecked value)? codeChecked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CodeSendedImplCopyWith<$Res> {
  factory _$$CodeSendedImplCopyWith(
          _$CodeSendedImpl value, $Res Function(_$CodeSendedImpl) then) =
      __$$CodeSendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeSendedImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$CodeSendedImpl>
    implements _$$CodeSendedImplCopyWith<$Res> {
  __$$CodeSendedImplCopyWithImpl(
      _$CodeSendedImpl _value, $Res Function(_$CodeSendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CodeSendedImpl implements _CodeSended {
  const _$CodeSendedImpl();

  @override
  String toString() {
    return 'OtpEvent.codeSended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeSendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() codeSended,
    required TResult Function(String code) codeChecked,
  }) {
    return codeSended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? codeSended,
    TResult? Function(String code)? codeChecked,
  }) {
    return codeSended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? codeSended,
    TResult Function(String code)? codeChecked,
    required TResult orElse(),
  }) {
    if (codeSended != null) {
      return codeSended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeSended value) codeSended,
    required TResult Function(_CodeChecked value) codeChecked,
  }) {
    return codeSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeSended value)? codeSended,
    TResult? Function(_CodeChecked value)? codeChecked,
  }) {
    return codeSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeSended value)? codeSended,
    TResult Function(_CodeChecked value)? codeChecked,
    required TResult orElse(),
  }) {
    if (codeSended != null) {
      return codeSended(this);
    }
    return orElse();
  }
}

abstract class _CodeSended implements OtpEvent {
  const factory _CodeSended() = _$CodeSendedImpl;
}

/// @nodoc
abstract class _$$CodeCheckedImplCopyWith<$Res> {
  factory _$$CodeCheckedImplCopyWith(
          _$CodeCheckedImpl value, $Res Function(_$CodeCheckedImpl) then) =
      __$$CodeCheckedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$CodeCheckedImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$CodeCheckedImpl>
    implements _$$CodeCheckedImplCopyWith<$Res> {
  __$$CodeCheckedImplCopyWithImpl(
      _$CodeCheckedImpl _value, $Res Function(_$CodeCheckedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$CodeCheckedImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CodeCheckedImpl implements _CodeChecked {
  const _$CodeCheckedImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'OtpEvent.codeChecked(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeCheckedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeCheckedImplCopyWith<_$CodeCheckedImpl> get copyWith =>
      __$$CodeCheckedImplCopyWithImpl<_$CodeCheckedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() codeSended,
    required TResult Function(String code) codeChecked,
  }) {
    return codeChecked(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? codeSended,
    TResult? Function(String code)? codeChecked,
  }) {
    return codeChecked?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? codeSended,
    TResult Function(String code)? codeChecked,
    required TResult orElse(),
  }) {
    if (codeChecked != null) {
      return codeChecked(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CodeSended value) codeSended,
    required TResult Function(_CodeChecked value) codeChecked,
  }) {
    return codeChecked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CodeSended value)? codeSended,
    TResult? Function(_CodeChecked value)? codeChecked,
  }) {
    return codeChecked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CodeSended value)? codeSended,
    TResult Function(_CodeChecked value)? codeChecked,
    required TResult orElse(),
  }) {
    if (codeChecked != null) {
      return codeChecked(this);
    }
    return orElse();
  }
}

abstract class _CodeChecked implements OtpEvent {
  const factory _CodeChecked({required final String code}) = _$CodeCheckedImpl;

  String get code;

  /// Create a copy of OtpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeCheckedImplCopyWith<_$CodeCheckedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OtpState {
  Either<OtpFailure, Unit>? get sendResult =>
      throw _privateConstructorUsedError;
  Either<OtpFailure, Unit>? get checkResult =>
      throw _privateConstructorUsedError;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpStateCopyWith<OtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
  @useResult
  $Res call(
      {Either<OtpFailure, Unit>? sendResult,
      Either<OtpFailure, Unit>? checkResult});
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendResult = freezed,
    Object? checkResult = freezed,
  }) {
    return _then(_value.copyWith(
      sendResult: freezed == sendResult
          ? _value.sendResult
          : sendResult // ignore: cast_nullable_to_non_nullable
              as Either<OtpFailure, Unit>?,
      checkResult: freezed == checkResult
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as Either<OtpFailure, Unit>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpStateImplCopyWith<$Res>
    implements $OtpStateCopyWith<$Res> {
  factory _$$OtpStateImplCopyWith(
          _$OtpStateImpl value, $Res Function(_$OtpStateImpl) then) =
      __$$OtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Either<OtpFailure, Unit>? sendResult,
      Either<OtpFailure, Unit>? checkResult});
}

/// @nodoc
class __$$OtpStateImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpStateImpl>
    implements _$$OtpStateImplCopyWith<$Res> {
  __$$OtpStateImplCopyWithImpl(
      _$OtpStateImpl _value, $Res Function(_$OtpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendResult = freezed,
    Object? checkResult = freezed,
  }) {
    return _then(_$OtpStateImpl(
      sendResult: freezed == sendResult
          ? _value.sendResult
          : sendResult // ignore: cast_nullable_to_non_nullable
              as Either<OtpFailure, Unit>?,
      checkResult: freezed == checkResult
          ? _value.checkResult
          : checkResult // ignore: cast_nullable_to_non_nullable
              as Either<OtpFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$OtpStateImpl implements _OtpState {
  const _$OtpStateImpl({this.sendResult, this.checkResult});

  @override
  final Either<OtpFailure, Unit>? sendResult;
  @override
  final Either<OtpFailure, Unit>? checkResult;

  @override
  String toString() {
    return 'OtpState(sendResult: $sendResult, checkResult: $checkResult)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpStateImpl &&
            (identical(other.sendResult, sendResult) ||
                other.sendResult == sendResult) &&
            (identical(other.checkResult, checkResult) ||
                other.checkResult == checkResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendResult, checkResult);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      __$$OtpStateImplCopyWithImpl<_$OtpStateImpl>(this, _$identity);
}

abstract class _OtpState implements OtpState {
  const factory _OtpState(
      {final Either<OtpFailure, Unit>? sendResult,
      final Either<OtpFailure, Unit>? checkResult}) = _$OtpStateImpl;

  @override
  Either<OtpFailure, Unit>? get sendResult;
  @override
  Either<OtpFailure, Unit>? get checkResult;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

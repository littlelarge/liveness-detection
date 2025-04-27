// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passport_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PassportActorEvent {
  Uint8List get frontSide => throw _privateConstructorUsedError;
  Uint8List get backSide => throw _privateConstructorUsedError;
  Uint8List get face => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List frontSide, Uint8List backSide, Uint8List face)
        continueButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List frontSide, Uint8List backSide, Uint8List face)?
        continueButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List frontSide, Uint8List backSide, Uint8List face)?
        continueButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContinueButtonPressed value)
        continueButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContinueButtonPressed value)? continueButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContinueButtonPressed value)? continueButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PassportActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PassportActorEventCopyWith<PassportActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportActorEventCopyWith<$Res> {
  factory $PassportActorEventCopyWith(
          PassportActorEvent value, $Res Function(PassportActorEvent) then) =
      _$PassportActorEventCopyWithImpl<$Res, PassportActorEvent>;
  @useResult
  $Res call({Uint8List frontSide, Uint8List backSide, Uint8List face});
}

/// @nodoc
class _$PassportActorEventCopyWithImpl<$Res, $Val extends PassportActorEvent>
    implements $PassportActorEventCopyWith<$Res> {
  _$PassportActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassportActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontSide = null,
    Object? backSide = null,
    Object? face = null,
  }) {
    return _then(_value.copyWith(
      frontSide: null == frontSide
          ? _value.frontSide
          : frontSide // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      backSide: null == backSide
          ? _value.backSide
          : backSide // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContinueButtonPressedImplCopyWith<$Res>
    implements $PassportActorEventCopyWith<$Res> {
  factory _$$ContinueButtonPressedImplCopyWith(
          _$ContinueButtonPressedImpl value,
          $Res Function(_$ContinueButtonPressedImpl) then) =
      __$$ContinueButtonPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Uint8List frontSide, Uint8List backSide, Uint8List face});
}

/// @nodoc
class __$$ContinueButtonPressedImplCopyWithImpl<$Res>
    extends _$PassportActorEventCopyWithImpl<$Res, _$ContinueButtonPressedImpl>
    implements _$$ContinueButtonPressedImplCopyWith<$Res> {
  __$$ContinueButtonPressedImplCopyWithImpl(_$ContinueButtonPressedImpl _value,
      $Res Function(_$ContinueButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontSide = null,
    Object? backSide = null,
    Object? face = null,
  }) {
    return _then(_$ContinueButtonPressedImpl(
      frontSide: null == frontSide
          ? _value.frontSide
          : frontSide // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      backSide: null == backSide
          ? _value.backSide
          : backSide // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      face: null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$ContinueButtonPressedImpl implements _ContinueButtonPressed {
  const _$ContinueButtonPressedImpl(
      {required this.frontSide, required this.backSide, required this.face});

  @override
  final Uint8List frontSide;
  @override
  final Uint8List backSide;
  @override
  final Uint8List face;

  @override
  String toString() {
    return 'PassportActorEvent.continueButtonPressed(frontSide: $frontSide, backSide: $backSide, face: $face)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueButtonPressedImpl &&
            const DeepCollectionEquality().equals(other.frontSide, frontSide) &&
            const DeepCollectionEquality().equals(other.backSide, backSide) &&
            const DeepCollectionEquality().equals(other.face, face));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(frontSide),
      const DeepCollectionEquality().hash(backSide),
      const DeepCollectionEquality().hash(face));

  /// Create a copy of PassportActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinueButtonPressedImplCopyWith<_$ContinueButtonPressedImpl>
      get copyWith => __$$ContinueButtonPressedImplCopyWithImpl<
          _$ContinueButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uint8List frontSide, Uint8List backSide, Uint8List face)
        continueButtonPressed,
  }) {
    return continueButtonPressed(frontSide, backSide, face);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uint8List frontSide, Uint8List backSide, Uint8List face)?
        continueButtonPressed,
  }) {
    return continueButtonPressed?.call(frontSide, backSide, face);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uint8List frontSide, Uint8List backSide, Uint8List face)?
        continueButtonPressed,
    required TResult orElse(),
  }) {
    if (continueButtonPressed != null) {
      return continueButtonPressed(frontSide, backSide, face);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContinueButtonPressed value)
        continueButtonPressed,
  }) {
    return continueButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContinueButtonPressed value)? continueButtonPressed,
  }) {
    return continueButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContinueButtonPressed value)? continueButtonPressed,
    required TResult orElse(),
  }) {
    if (continueButtonPressed != null) {
      return continueButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _ContinueButtonPressed implements PassportActorEvent {
  const factory _ContinueButtonPressed(
      {required final Uint8List frontSide,
      required final Uint8List backSide,
      required final Uint8List face}) = _$ContinueButtonPressedImpl;

  @override
  Uint8List get frontSide;
  @override
  Uint8List get backSide;
  @override
  Uint8List get face;

  /// Create a copy of PassportActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContinueButtonPressedImplCopyWith<_$ContinueButtonPressedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PassportActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() checkSuccess,
    required TResult Function(PassportFailure failure) checkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? checkSuccess,
    TResult? Function(PassportFailure failure)? checkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? checkSuccess,
    TResult Function(PassportFailure failure)? checkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CheckSuccess value) checkSuccess,
    required TResult Function(_CheckFailure value) checkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CheckSuccess value)? checkSuccess,
    TResult? Function(_CheckFailure value)? checkFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CheckSuccess value)? checkSuccess,
    TResult Function(_CheckFailure value)? checkFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PassportActorStateCopyWith<$Res> {
  factory $PassportActorStateCopyWith(
          PassportActorState value, $Res Function(PassportActorState) then) =
      _$PassportActorStateCopyWithImpl<$Res, PassportActorState>;
}

/// @nodoc
class _$PassportActorStateCopyWithImpl<$Res, $Val extends PassportActorState>
    implements $PassportActorStateCopyWith<$Res> {
  _$PassportActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PassportActorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PassportActorState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() checkSuccess,
    required TResult Function(PassportFailure failure) checkFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? checkSuccess,
    TResult? Function(PassportFailure failure)? checkFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? checkSuccess,
    TResult Function(PassportFailure failure)? checkFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CheckSuccess value) checkSuccess,
    required TResult Function(_CheckFailure value) checkFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CheckSuccess value)? checkSuccess,
    TResult? Function(_CheckFailure value)? checkFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CheckSuccess value)? checkSuccess,
    TResult Function(_CheckFailure value)? checkFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PassportActorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$PassportActorStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'PassportActorState.inProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() checkSuccess,
    required TResult Function(PassportFailure failure) checkFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? checkSuccess,
    TResult? Function(PassportFailure failure)? checkFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? checkSuccess,
    TResult Function(PassportFailure failure)? checkFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CheckSuccess value) checkSuccess,
    required TResult Function(_CheckFailure value) checkFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CheckSuccess value)? checkSuccess,
    TResult? Function(_CheckFailure value)? checkFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CheckSuccess value)? checkSuccess,
    TResult Function(_CheckFailure value)? checkFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements PassportActorState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$CheckSuccessImplCopyWith<$Res> {
  factory _$$CheckSuccessImplCopyWith(
          _$CheckSuccessImpl value, $Res Function(_$CheckSuccessImpl) then) =
      __$$CheckSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckSuccessImplCopyWithImpl<$Res>
    extends _$PassportActorStateCopyWithImpl<$Res, _$CheckSuccessImpl>
    implements _$$CheckSuccessImplCopyWith<$Res> {
  __$$CheckSuccessImplCopyWithImpl(
      _$CheckSuccessImpl _value, $Res Function(_$CheckSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckSuccessImpl implements _CheckSuccess {
  const _$CheckSuccessImpl();

  @override
  String toString() {
    return 'PassportActorState.checkSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() checkSuccess,
    required TResult Function(PassportFailure failure) checkFailure,
  }) {
    return checkSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? checkSuccess,
    TResult? Function(PassportFailure failure)? checkFailure,
  }) {
    return checkSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? checkSuccess,
    TResult Function(PassportFailure failure)? checkFailure,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CheckSuccess value) checkSuccess,
    required TResult Function(_CheckFailure value) checkFailure,
  }) {
    return checkSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CheckSuccess value)? checkSuccess,
    TResult? Function(_CheckFailure value)? checkFailure,
  }) {
    return checkSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CheckSuccess value)? checkSuccess,
    TResult Function(_CheckFailure value)? checkFailure,
    required TResult orElse(),
  }) {
    if (checkSuccess != null) {
      return checkSuccess(this);
    }
    return orElse();
  }
}

abstract class _CheckSuccess implements PassportActorState {
  const factory _CheckSuccess() = _$CheckSuccessImpl;
}

/// @nodoc
abstract class _$$CheckFailureImplCopyWith<$Res> {
  factory _$$CheckFailureImplCopyWith(
          _$CheckFailureImpl value, $Res Function(_$CheckFailureImpl) then) =
      __$$CheckFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PassportFailure failure});

  $PassportFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CheckFailureImplCopyWithImpl<$Res>
    extends _$PassportActorStateCopyWithImpl<$Res, _$CheckFailureImpl>
    implements _$$CheckFailureImplCopyWith<$Res> {
  __$$CheckFailureImplCopyWithImpl(
      _$CheckFailureImpl _value, $Res Function(_$CheckFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CheckFailureImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as PassportFailure,
    ));
  }

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PassportFailureCopyWith<$Res> get failure {
    return $PassportFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CheckFailureImpl implements _CheckFailure {
  const _$CheckFailureImpl({required this.failure});

  @override
  final PassportFailure failure;

  @override
  String toString() {
    return 'PassportActorState.checkFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckFailureImplCopyWith<_$CheckFailureImpl> get copyWith =>
      __$$CheckFailureImplCopyWithImpl<_$CheckFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() checkSuccess,
    required TResult Function(PassportFailure failure) checkFailure,
  }) {
    return checkFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? checkSuccess,
    TResult? Function(PassportFailure failure)? checkFailure,
  }) {
    return checkFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? checkSuccess,
    TResult Function(PassportFailure failure)? checkFailure,
    required TResult orElse(),
  }) {
    if (checkFailure != null) {
      return checkFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_CheckSuccess value) checkSuccess,
    required TResult Function(_CheckFailure value) checkFailure,
  }) {
    return checkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_CheckSuccess value)? checkSuccess,
    TResult? Function(_CheckFailure value)? checkFailure,
  }) {
    return checkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_CheckSuccess value)? checkSuccess,
    TResult Function(_CheckFailure value)? checkFailure,
    required TResult orElse(),
  }) {
    if (checkFailure != null) {
      return checkFailure(this);
    }
    return orElse();
  }
}

abstract class _CheckFailure implements PassportActorState {
  const factory _CheckFailure({required final PassportFailure failure}) =
      _$CheckFailureImpl;

  PassportFailure get failure;

  /// Create a copy of PassportActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckFailureImplCopyWith<_$CheckFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

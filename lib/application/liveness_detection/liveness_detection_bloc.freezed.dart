// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liveness_detection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LivenessDetectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivenessDetectionEventCopyWith<$Res> {
  factory $LivenessDetectionEventCopyWith(LivenessDetectionEvent value,
          $Res Function(LivenessDetectionEvent) then) =
      _$LivenessDetectionEventCopyWithImpl<$Res, LivenessDetectionEvent>;
}

/// @nodoc
class _$LivenessDetectionEventCopyWithImpl<$Res,
        $Val extends LivenessDetectionEvent>
    implements $LivenessDetectionEventCopyWith<$Res> {
  _$LivenessDetectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializedImpl with DiagnosticableTreeMixin implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionEvent.initialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LivenessDetectionEvent.initialized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements LivenessDetectionEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$InitCamerasImplCopyWith<$Res> {
  factory _$$InitCamerasImplCopyWith(
          _$InitCamerasImpl value, $Res Function(_$InitCamerasImpl) then) =
      __$$InitCamerasImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitCamerasImplCopyWithImpl<$Res>
    extends _$LivenessDetectionEventCopyWithImpl<$Res, _$InitCamerasImpl>
    implements _$$InitCamerasImplCopyWith<$Res> {
  __$$InitCamerasImplCopyWithImpl(
      _$InitCamerasImpl _value, $Res Function(_$InitCamerasImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitCamerasImpl with DiagnosticableTreeMixin implements _InitCameras {
  const _$InitCamerasImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionEvent.initCameras()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LivenessDetectionEvent.initCameras'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitCamerasImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) {
    return initCameras();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) {
    return initCameras?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (initCameras != null) {
      return initCameras();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) {
    return initCameras(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) {
    return initCameras?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (initCameras != null) {
      return initCameras(this);
    }
    return orElse();
  }
}

abstract class _InitCameras implements LivenessDetectionEvent {
  const factory _InitCameras() = _$InitCamerasImpl;
}

/// @nodoc
abstract class _$$StartDetectionImplCopyWith<$Res> {
  factory _$$StartDetectionImplCopyWith(_$StartDetectionImpl value,
          $Res Function(_$StartDetectionImpl) then) =
      __$$StartDetectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartDetectionImplCopyWithImpl<$Res>
    extends _$LivenessDetectionEventCopyWithImpl<$Res, _$StartDetectionImpl>
    implements _$$StartDetectionImplCopyWith<$Res> {
  __$$StartDetectionImplCopyWithImpl(
      _$StartDetectionImpl _value, $Res Function(_$StartDetectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartDetectionImpl
    with DiagnosticableTreeMixin
    implements _StartDetection {
  const _$StartDetectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionEvent.startDetection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionEvent.startDetection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartDetectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) {
    return startDetection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) {
    return startDetection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (startDetection != null) {
      return startDetection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) {
    return startDetection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) {
    return startDetection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (startDetection != null) {
      return startDetection(this);
    }
    return orElse();
  }
}

abstract class _StartDetection implements LivenessDetectionEvent {
  const factory _StartDetection() = _$StartDetectionImpl;
}

/// @nodoc
abstract class _$$CheckLivenessImplCopyWith<$Res> {
  factory _$$CheckLivenessImplCopyWith(
          _$CheckLivenessImpl value, $Res Function(_$CheckLivenessImpl) then) =
      __$$CheckLivenessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Face face});
}

/// @nodoc
class __$$CheckLivenessImplCopyWithImpl<$Res>
    extends _$LivenessDetectionEventCopyWithImpl<$Res, _$CheckLivenessImpl>
    implements _$$CheckLivenessImplCopyWith<$Res> {
  __$$CheckLivenessImplCopyWithImpl(
      _$CheckLivenessImpl _value, $Res Function(_$CheckLivenessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? face = null,
  }) {
    return _then(_$CheckLivenessImpl(
      null == face
          ? _value.face
          : face // ignore: cast_nullable_to_non_nullable
              as Face,
    ));
  }
}

/// @nodoc

class _$CheckLivenessImpl
    with DiagnosticableTreeMixin
    implements _CheckLiveness {
  const _$CheckLivenessImpl(this.face);

  @override
  final Face face;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionEvent.checkLiveness(face: $face)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LivenessDetectionEvent.checkLiveness'))
      ..add(DiagnosticsProperty('face', face));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckLivenessImpl &&
            (identical(other.face, face) || other.face == face));
  }

  @override
  int get hashCode => Object.hash(runtimeType, face);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckLivenessImplCopyWith<_$CheckLivenessImpl> get copyWith =>
      __$$CheckLivenessImplCopyWithImpl<_$CheckLivenessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) {
    return checkLiveness(face);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) {
    return checkLiveness?.call(face);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (checkLiveness != null) {
      return checkLiveness(face);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) {
    return checkLiveness(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) {
    return checkLiveness?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (checkLiveness != null) {
      return checkLiveness(this);
    }
    return orElse();
  }
}

abstract class _CheckLiveness implements LivenessDetectionEvent {
  const factory _CheckLiveness(final Face face) = _$CheckLivenessImpl;

  Face get face;

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckLivenessImplCopyWith<_$CheckLivenessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetDetectionImplCopyWith<$Res> {
  factory _$$ResetDetectionImplCopyWith(_$ResetDetectionImpl value,
          $Res Function(_$ResetDetectionImpl) then) =
      __$$ResetDetectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetDetectionImplCopyWithImpl<$Res>
    extends _$LivenessDetectionEventCopyWithImpl<$Res, _$ResetDetectionImpl>
    implements _$$ResetDetectionImplCopyWith<$Res> {
  __$$ResetDetectionImplCopyWithImpl(
      _$ResetDetectionImpl _value, $Res Function(_$ResetDetectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetDetectionImpl
    with DiagnosticableTreeMixin
    implements _ResetDetection {
  const _$ResetDetectionImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionEvent.resetDetection()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionEvent.resetDetection'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetDetectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) {
    return resetDetection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) {
    return resetDetection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (resetDetection != null) {
      return resetDetection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) {
    return resetDetection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) {
    return resetDetection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (resetDetection != null) {
      return resetDetection(this);
    }
    return orElse();
  }
}

abstract class _ResetDetection implements LivenessDetectionEvent {
  const factory _ResetDetection() = _$ResetDetectionImpl;
}

/// @nodoc
abstract class _$$CaptureButtonPressedImplCopyWith<$Res> {
  factory _$$CaptureButtonPressedImplCopyWith(_$CaptureButtonPressedImpl value,
          $Res Function(_$CaptureButtonPressedImpl) then) =
      __$$CaptureButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CaptureButtonPressedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionEventCopyWithImpl<$Res,
        _$CaptureButtonPressedImpl>
    implements _$$CaptureButtonPressedImplCopyWith<$Res> {
  __$$CaptureButtonPressedImplCopyWithImpl(_$CaptureButtonPressedImpl _value,
      $Res Function(_$CaptureButtonPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CaptureButtonPressedImpl
    with DiagnosticableTreeMixin
    implements _CaptureButtonPressed {
  const _$CaptureButtonPressedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionEvent.captureButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'LivenessDetectionEvent.captureButtonPressed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptureButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() initCameras,
    required TResult Function() startDetection,
    required TResult Function(Face face) checkLiveness,
    required TResult Function() resetDetection,
    required TResult Function() captureButtonPressed,
  }) {
    return captureButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? initCameras,
    TResult? Function()? startDetection,
    TResult? Function(Face face)? checkLiveness,
    TResult? Function()? resetDetection,
    TResult? Function()? captureButtonPressed,
  }) {
    return captureButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? initCameras,
    TResult Function()? startDetection,
    TResult Function(Face face)? checkLiveness,
    TResult Function()? resetDetection,
    TResult Function()? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (captureButtonPressed != null) {
      return captureButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_InitCameras value) initCameras,
    required TResult Function(_StartDetection value) startDetection,
    required TResult Function(_CheckLiveness value) checkLiveness,
    required TResult Function(_ResetDetection value) resetDetection,
    required TResult Function(_CaptureButtonPressed value) captureButtonPressed,
  }) {
    return captureButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_InitCameras value)? initCameras,
    TResult? Function(_StartDetection value)? startDetection,
    TResult? Function(_CheckLiveness value)? checkLiveness,
    TResult? Function(_ResetDetection value)? resetDetection,
    TResult? Function(_CaptureButtonPressed value)? captureButtonPressed,
  }) {
    return captureButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_InitCameras value)? initCameras,
    TResult Function(_StartDetection value)? startDetection,
    TResult Function(_CheckLiveness value)? checkLiveness,
    TResult Function(_ResetDetection value)? resetDetection,
    TResult Function(_CaptureButtonPressed value)? captureButtonPressed,
    required TResult orElse(),
  }) {
    if (captureButtonPressed != null) {
      return captureButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _CaptureButtonPressed implements LivenessDetectionEvent {
  const factory _CaptureButtonPressed() = _$CaptureButtonPressedImpl;
}

/// @nodoc
mixin _$LivenessDetectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LivenessDetectionStateCopyWith<$Res> {
  factory $LivenessDetectionStateCopyWith(LivenessDetectionState value,
          $Res Function(LivenessDetectionState) then) =
      _$LivenessDetectionStateCopyWithImpl<$Res, LivenessDetectionState>;
}

/// @nodoc
class _$LivenessDetectionStateCopyWithImpl<$Res,
        $Val extends LivenessDetectionState>
    implements $LivenessDetectionStateCopyWith<$Res> {
  _$LivenessDetectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LivenessDetectionState
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
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LivenessDetectionState.initial'));
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
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
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
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LivenessDetectionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$IsDetectingImplCopyWith<$Res> {
  factory _$$IsDetectingImplCopyWith(
          _$IsDetectingImpl value, $Res Function(_$IsDetectingImpl) then) =
      __$$IsDetectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsDetectingImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$IsDetectingImpl>
    implements _$$IsDetectingImplCopyWith<$Res> {
  __$$IsDetectingImplCopyWithImpl(
      _$IsDetectingImpl _value, $Res Function(_$IsDetectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IsDetectingImpl with DiagnosticableTreeMixin implements _IsDetecting {
  const _$IsDetectingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.isDetecting()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LivenessDetectionState.isDetecting'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsDetectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return isDetecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return isDetecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (isDetecting != null) {
      return isDetecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return isDetecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return isDetecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (isDetecting != null) {
      return isDetecting(this);
    }
    return orElse();
  }
}

abstract class _IsDetecting implements LivenessDetectionState {
  const factory _IsDetecting() = _$IsDetectingImpl;
}

/// @nodoc
abstract class _$$SmileDetectedImplCopyWith<$Res> {
  factory _$$SmileDetectedImplCopyWith(
          _$SmileDetectedImpl value, $Res Function(_$SmileDetectedImpl) then) =
      __$$SmileDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SmileDetectedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$SmileDetectedImpl>
    implements _$$SmileDetectedImplCopyWith<$Res> {
  __$$SmileDetectedImplCopyWithImpl(
      _$SmileDetectedImpl _value, $Res Function(_$SmileDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SmileDetectedImpl
    with DiagnosticableTreeMixin
    implements _SmileDetected {
  const _$SmileDetectedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.smileDetected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionState.smileDetected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SmileDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return smileDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return smileDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (smileDetected != null) {
      return smileDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return smileDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return smileDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (smileDetected != null) {
      return smileDetected(this);
    }
    return orElse();
  }
}

abstract class _SmileDetected implements LivenessDetectionState {
  const factory _SmileDetected() = _$SmileDetectedImpl;
}

/// @nodoc
abstract class _$$BlinkDetectedImplCopyWith<$Res> {
  factory _$$BlinkDetectedImplCopyWith(
          _$BlinkDetectedImpl value, $Res Function(_$BlinkDetectedImpl) then) =
      __$$BlinkDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BlinkDetectedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$BlinkDetectedImpl>
    implements _$$BlinkDetectedImplCopyWith<$Res> {
  __$$BlinkDetectedImplCopyWithImpl(
      _$BlinkDetectedImpl _value, $Res Function(_$BlinkDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$BlinkDetectedImpl
    with DiagnosticableTreeMixin
    implements _BlinkDetected {
  const _$BlinkDetectedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.blinkDetected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionState.blinkDetected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BlinkDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return blinkDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return blinkDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (blinkDetected != null) {
      return blinkDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return blinkDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return blinkDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (blinkDetected != null) {
      return blinkDetected(this);
    }
    return orElse();
  }
}

abstract class _BlinkDetected implements LivenessDetectionState {
  const factory _BlinkDetected() = _$BlinkDetectedImpl;
}

/// @nodoc
abstract class _$$HeadRightDetectedImplCopyWith<$Res> {
  factory _$$HeadRightDetectedImplCopyWith(_$HeadRightDetectedImpl value,
          $Res Function(_$HeadRightDetectedImpl) then) =
      __$$HeadRightDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeadRightDetectedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$HeadRightDetectedImpl>
    implements _$$HeadRightDetectedImplCopyWith<$Res> {
  __$$HeadRightDetectedImplCopyWithImpl(_$HeadRightDetectedImpl _value,
      $Res Function(_$HeadRightDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeadRightDetectedImpl
    with DiagnosticableTreeMixin
    implements _HeadRightDetected {
  const _$HeadRightDetectedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.headRightDetected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'LivenessDetectionState.headRightDetected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeadRightDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return headRightDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return headRightDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headRightDetected != null) {
      return headRightDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return headRightDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return headRightDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headRightDetected != null) {
      return headRightDetected(this);
    }
    return orElse();
  }
}

abstract class _HeadRightDetected implements LivenessDetectionState {
  const factory _HeadRightDetected() = _$HeadRightDetectedImpl;
}

/// @nodoc
abstract class _$$HeadLeftDetectedImplCopyWith<$Res> {
  factory _$$HeadLeftDetectedImplCopyWith(_$HeadLeftDetectedImpl value,
          $Res Function(_$HeadLeftDetectedImpl) then) =
      __$$HeadLeftDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeadLeftDetectedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$HeadLeftDetectedImpl>
    implements _$$HeadLeftDetectedImplCopyWith<$Res> {
  __$$HeadLeftDetectedImplCopyWithImpl(_$HeadLeftDetectedImpl _value,
      $Res Function(_$HeadLeftDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeadLeftDetectedImpl
    with DiagnosticableTreeMixin
    implements _HeadLeftDetected {
  const _$HeadLeftDetectedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.headLeftDetected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionState.headLeftDetected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeadLeftDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return headLeftDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return headLeftDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headLeftDetected != null) {
      return headLeftDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return headLeftDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return headLeftDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headLeftDetected != null) {
      return headLeftDetected(this);
    }
    return orElse();
  }
}

abstract class _HeadLeftDetected implements LivenessDetectionState {
  const factory _HeadLeftDetected() = _$HeadLeftDetectedImpl;
}

/// @nodoc
abstract class _$$HeadUpDetectedImplCopyWith<$Res> {
  factory _$$HeadUpDetectedImplCopyWith(_$HeadUpDetectedImpl value,
          $Res Function(_$HeadUpDetectedImpl) then) =
      __$$HeadUpDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeadUpDetectedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$HeadUpDetectedImpl>
    implements _$$HeadUpDetectedImplCopyWith<$Res> {
  __$$HeadUpDetectedImplCopyWithImpl(
      _$HeadUpDetectedImpl _value, $Res Function(_$HeadUpDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeadUpDetectedImpl
    with DiagnosticableTreeMixin
    implements _HeadUpDetected {
  const _$HeadUpDetectedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.headUpDetected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionState.headUpDetected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeadUpDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return headUpDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return headUpDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headUpDetected != null) {
      return headUpDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return headUpDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return headUpDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headUpDetected != null) {
      return headUpDetected(this);
    }
    return orElse();
  }
}

abstract class _HeadUpDetected implements LivenessDetectionState {
  const factory _HeadUpDetected() = _$HeadUpDetectedImpl;
}

/// @nodoc
abstract class _$$HeadDownDetectedImplCopyWith<$Res> {
  factory _$$HeadDownDetectedImplCopyWith(_$HeadDownDetectedImpl value,
          $Res Function(_$HeadDownDetectedImpl) then) =
      __$$HeadDownDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeadDownDetectedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$HeadDownDetectedImpl>
    implements _$$HeadDownDetectedImplCopyWith<$Res> {
  __$$HeadDownDetectedImplCopyWithImpl(_$HeadDownDetectedImpl _value,
      $Res Function(_$HeadDownDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeadDownDetectedImpl
    with DiagnosticableTreeMixin
    implements _HeadDownDetected {
  const _$HeadDownDetectedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.headDownDetected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'LivenessDetectionState.headDownDetected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeadDownDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return headDownDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return headDownDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headDownDetected != null) {
      return headDownDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return headDownDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return headDownDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (headDownDetected != null) {
      return headDownDetected(this);
    }
    return orElse();
  }
}

abstract class _HeadDownDetected implements LivenessDetectionState {
  const factory _HeadDownDetected() = _$HeadDownDetectedImpl;
}

/// @nodoc
abstract class _$$CapturingFinalImageImplCopyWith<$Res> {
  factory _$$CapturingFinalImageImplCopyWith(_$CapturingFinalImageImpl value,
          $Res Function(_$CapturingFinalImageImpl) then) =
      __$$CapturingFinalImageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool canCapture, Uint8List? capturedImage});
}

/// @nodoc
class __$$CapturingFinalImageImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res,
        _$CapturingFinalImageImpl>
    implements _$$CapturingFinalImageImplCopyWith<$Res> {
  __$$CapturingFinalImageImplCopyWithImpl(_$CapturingFinalImageImpl _value,
      $Res Function(_$CapturingFinalImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canCapture = null,
    Object? capturedImage = freezed,
  }) {
    return _then(_$CapturingFinalImageImpl(
      canCapture: null == canCapture
          ? _value.canCapture
          : canCapture // ignore: cast_nullable_to_non_nullable
              as bool,
      capturedImage: freezed == capturedImage
          ? _value.capturedImage
          : capturedImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$CapturingFinalImageImpl
    with DiagnosticableTreeMixin
    implements _CapturingFinalImage {
  const _$CapturingFinalImageImpl(
      {this.canCapture = false, this.capturedImage});

  @override
  @JsonKey()
  final bool canCapture;
  @override
  final Uint8List? capturedImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.capturingFinalImage(canCapture: $canCapture, capturedImage: $capturedImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'LivenessDetectionState.capturingFinalImage'))
      ..add(DiagnosticsProperty('canCapture', canCapture))
      ..add(DiagnosticsProperty('capturedImage', capturedImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapturingFinalImageImpl &&
            (identical(other.canCapture, canCapture) ||
                other.canCapture == canCapture) &&
            const DeepCollectionEquality()
                .equals(other.capturedImage, capturedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canCapture,
      const DeepCollectionEquality().hash(capturedImage));

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CapturingFinalImageImplCopyWith<_$CapturingFinalImageImpl> get copyWith =>
      __$$CapturingFinalImageImplCopyWithImpl<_$CapturingFinalImageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return capturingFinalImage(canCapture, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return capturingFinalImage?.call(canCapture, capturedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (capturingFinalImage != null) {
      return capturingFinalImage(canCapture, capturedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return capturingFinalImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return capturingFinalImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (capturingFinalImage != null) {
      return capturingFinalImage(this);
    }
    return orElse();
  }
}

abstract class _CapturingFinalImage implements LivenessDetectionState {
  const factory _CapturingFinalImage(
      {final bool canCapture,
      final Uint8List? capturedImage}) = _$CapturingFinalImageImpl;

  bool get canCapture;
  Uint8List? get capturedImage;

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CapturingFinalImageImplCopyWith<_$CapturingFinalImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LivenessConfirmedImplCopyWith<$Res> {
  factory _$$LivenessConfirmedImplCopyWith(_$LivenessConfirmedImpl value,
          $Res Function(_$LivenessConfirmedImpl) then) =
      __$$LivenessConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LivenessConfirmedImplCopyWithImpl<$Res>
    extends _$LivenessDetectionStateCopyWithImpl<$Res, _$LivenessConfirmedImpl>
    implements _$$LivenessConfirmedImplCopyWith<$Res> {
  __$$LivenessConfirmedImplCopyWithImpl(_$LivenessConfirmedImpl _value,
      $Res Function(_$LivenessConfirmedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LivenessDetectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LivenessConfirmedImpl
    with DiagnosticableTreeMixin
    implements _LivenessConfirmed {
  const _$LivenessConfirmedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LivenessDetectionState.livenessConfirmed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'LivenessDetectionState.livenessConfirmed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LivenessConfirmedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isDetecting,
    required TResult Function() smileDetected,
    required TResult Function() blinkDetected,
    required TResult Function() headRightDetected,
    required TResult Function() headLeftDetected,
    required TResult Function() headUpDetected,
    required TResult Function() headDownDetected,
    required TResult Function(bool canCapture, Uint8List? capturedImage)
        capturingFinalImage,
    required TResult Function() livenessConfirmed,
  }) {
    return livenessConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isDetecting,
    TResult? Function()? smileDetected,
    TResult? Function()? blinkDetected,
    TResult? Function()? headRightDetected,
    TResult? Function()? headLeftDetected,
    TResult? Function()? headUpDetected,
    TResult? Function()? headDownDetected,
    TResult? Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult? Function()? livenessConfirmed,
  }) {
    return livenessConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isDetecting,
    TResult Function()? smileDetected,
    TResult Function()? blinkDetected,
    TResult Function()? headRightDetected,
    TResult Function()? headLeftDetected,
    TResult Function()? headUpDetected,
    TResult Function()? headDownDetected,
    TResult Function(bool canCapture, Uint8List? capturedImage)?
        capturingFinalImage,
    TResult Function()? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (livenessConfirmed != null) {
      return livenessConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_IsDetecting value) isDetecting,
    required TResult Function(_SmileDetected value) smileDetected,
    required TResult Function(_BlinkDetected value) blinkDetected,
    required TResult Function(_HeadRightDetected value) headRightDetected,
    required TResult Function(_HeadLeftDetected value) headLeftDetected,
    required TResult Function(_HeadUpDetected value) headUpDetected,
    required TResult Function(_HeadDownDetected value) headDownDetected,
    required TResult Function(_CapturingFinalImage value) capturingFinalImage,
    required TResult Function(_LivenessConfirmed value) livenessConfirmed,
  }) {
    return livenessConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_IsDetecting value)? isDetecting,
    TResult? Function(_SmileDetected value)? smileDetected,
    TResult? Function(_BlinkDetected value)? blinkDetected,
    TResult? Function(_HeadRightDetected value)? headRightDetected,
    TResult? Function(_HeadLeftDetected value)? headLeftDetected,
    TResult? Function(_HeadUpDetected value)? headUpDetected,
    TResult? Function(_HeadDownDetected value)? headDownDetected,
    TResult? Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult? Function(_LivenessConfirmed value)? livenessConfirmed,
  }) {
    return livenessConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_IsDetecting value)? isDetecting,
    TResult Function(_SmileDetected value)? smileDetected,
    TResult Function(_BlinkDetected value)? blinkDetected,
    TResult Function(_HeadRightDetected value)? headRightDetected,
    TResult Function(_HeadLeftDetected value)? headLeftDetected,
    TResult Function(_HeadUpDetected value)? headUpDetected,
    TResult Function(_HeadDownDetected value)? headDownDetected,
    TResult Function(_CapturingFinalImage value)? capturingFinalImage,
    TResult Function(_LivenessConfirmed value)? livenessConfirmed,
    required TResult orElse(),
  }) {
    if (livenessConfirmed != null) {
      return livenessConfirmed(this);
    }
    return orElse();
  }
}

abstract class _LivenessConfirmed implements LivenessDetectionState {
  const factory _LivenessConfirmed() = _$LivenessConfirmedImpl;
}

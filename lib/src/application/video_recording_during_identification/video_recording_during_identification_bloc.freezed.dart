// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_recording_during_identification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoRecordingDuringIdentificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CameraDescription camera, CameraController controller)
        initialized,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStoped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecordingStarted value) recordingStarted,
    required TResult Function(_RecordingStoped value) recordingStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecordingStarted value)? recordingStarted,
    TResult? Function(_RecordingStoped value)? recordingStoped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecordingStarted value)? recordingStarted,
    TResult Function(_RecordingStoped value)? recordingStoped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoRecordingDuringIdentificationEventCopyWith<$Res> {
  factory $VideoRecordingDuringIdentificationEventCopyWith(
          VideoRecordingDuringIdentificationEvent value,
          $Res Function(VideoRecordingDuringIdentificationEvent) then) =
      _$VideoRecordingDuringIdentificationEventCopyWithImpl<$Res,
          VideoRecordingDuringIdentificationEvent>;
}

/// @nodoc
class _$VideoRecordingDuringIdentificationEventCopyWithImpl<$Res,
        $Val extends VideoRecordingDuringIdentificationEvent>
    implements $VideoRecordingDuringIdentificationEventCopyWith<$Res> {
  _$VideoRecordingDuringIdentificationEventCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoRecordingDuringIdentificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraDescription camera, CameraController controller});
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$VideoRecordingDuringIdentificationEventCopyWithImpl<$Res,
        _$InitializedImpl> implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoRecordingDuringIdentificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? camera = null,
    Object? controller = null,
  }) {
    return _then(_$InitializedImpl(
      camera: null == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as CameraDescription,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl({required this.camera, required this.controller});

  @override
  final CameraDescription camera;
  @override
  final CameraController controller;

  @override
  String toString() {
    return 'VideoRecordingDuringIdentificationEvent.initialized(camera: $camera, controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializedImpl &&
            (identical(other.camera, camera) || other.camera == camera) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, camera, controller);

  /// Create a copy of VideoRecordingDuringIdentificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      __$$InitializedImplCopyWithImpl<_$InitializedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CameraDescription camera, CameraController controller)
        initialized,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStoped,
  }) {
    return initialized(camera, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStoped,
  }) {
    return initialized?.call(camera, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStoped,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(camera, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecordingStarted value) recordingStarted,
    required TResult Function(_RecordingStoped value) recordingStoped,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecordingStarted value)? recordingStarted,
    TResult? Function(_RecordingStoped value)? recordingStoped,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecordingStarted value)? recordingStarted,
    TResult Function(_RecordingStoped value)? recordingStoped,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements VideoRecordingDuringIdentificationEvent {
  const factory _Initialized(
      {required final CameraDescription camera,
      required final CameraController controller}) = _$InitializedImpl;

  CameraDescription get camera;
  CameraController get controller;

  /// Create a copy of VideoRecordingDuringIdentificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializedImplCopyWith<_$InitializedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecordingStartedImplCopyWith<$Res> {
  factory _$$RecordingStartedImplCopyWith(_$RecordingStartedImpl value,
          $Res Function(_$RecordingStartedImpl) then) =
      __$$RecordingStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStartedImplCopyWithImpl<$Res>
    extends _$VideoRecordingDuringIdentificationEventCopyWithImpl<$Res,
        _$RecordingStartedImpl>
    implements _$$RecordingStartedImplCopyWith<$Res> {
  __$$RecordingStartedImplCopyWithImpl(_$RecordingStartedImpl _value,
      $Res Function(_$RecordingStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoRecordingDuringIdentificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingStartedImpl implements _RecordingStarted {
  const _$RecordingStartedImpl();

  @override
  String toString() {
    return 'VideoRecordingDuringIdentificationEvent.recordingStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CameraDescription camera, CameraController controller)
        initialized,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStoped,
  }) {
    return recordingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStoped,
  }) {
    return recordingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStoped,
    required TResult orElse(),
  }) {
    if (recordingStarted != null) {
      return recordingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecordingStarted value) recordingStarted,
    required TResult Function(_RecordingStoped value) recordingStoped,
  }) {
    return recordingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecordingStarted value)? recordingStarted,
    TResult? Function(_RecordingStoped value)? recordingStoped,
  }) {
    return recordingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecordingStarted value)? recordingStarted,
    TResult Function(_RecordingStoped value)? recordingStoped,
    required TResult orElse(),
  }) {
    if (recordingStarted != null) {
      return recordingStarted(this);
    }
    return orElse();
  }
}

abstract class _RecordingStarted
    implements VideoRecordingDuringIdentificationEvent {
  const factory _RecordingStarted() = _$RecordingStartedImpl;
}

/// @nodoc
abstract class _$$RecordingStopedImplCopyWith<$Res> {
  factory _$$RecordingStopedImplCopyWith(_$RecordingStopedImpl value,
          $Res Function(_$RecordingStopedImpl) then) =
      __$$RecordingStopedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecordingStopedImplCopyWithImpl<$Res>
    extends _$VideoRecordingDuringIdentificationEventCopyWithImpl<$Res,
        _$RecordingStopedImpl> implements _$$RecordingStopedImplCopyWith<$Res> {
  __$$RecordingStopedImplCopyWithImpl(
      _$RecordingStopedImpl _value, $Res Function(_$RecordingStopedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoRecordingDuringIdentificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecordingStopedImpl implements _RecordingStoped {
  const _$RecordingStopedImpl();

  @override
  String toString() {
    return 'VideoRecordingDuringIdentificationEvent.recordingStoped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecordingStopedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CameraDescription camera, CameraController controller)
        initialized,
    required TResult Function() recordingStarted,
    required TResult Function() recordingStoped,
  }) {
    return recordingStoped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult? Function()? recordingStarted,
    TResult? Function()? recordingStoped,
  }) {
    return recordingStoped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CameraDescription camera, CameraController controller)?
        initialized,
    TResult Function()? recordingStarted,
    TResult Function()? recordingStoped,
    required TResult orElse(),
  }) {
    if (recordingStoped != null) {
      return recordingStoped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_RecordingStarted value) recordingStarted,
    required TResult Function(_RecordingStoped value) recordingStoped,
  }) {
    return recordingStoped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_RecordingStarted value)? recordingStarted,
    TResult? Function(_RecordingStoped value)? recordingStoped,
  }) {
    return recordingStoped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_RecordingStarted value)? recordingStarted,
    TResult Function(_RecordingStoped value)? recordingStoped,
    required TResult orElse(),
  }) {
    if (recordingStoped != null) {
      return recordingStoped(this);
    }
    return orElse();
  }
}

abstract class _RecordingStoped
    implements VideoRecordingDuringIdentificationEvent {
  const factory _RecordingStoped() = _$RecordingStopedImpl;
}

/// @nodoc
mixin _$VideoRecordingDuringIdentificationState {
  CameraController? get controller => throw _privateConstructorUsedError;
  bool get isRecording => throw _privateConstructorUsedError;
  CameraDescription? get camera => throw _privateConstructorUsedError;

  /// Create a copy of VideoRecordingDuringIdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoRecordingDuringIdentificationStateCopyWith<
          VideoRecordingDuringIdentificationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoRecordingDuringIdentificationStateCopyWith<$Res> {
  factory $VideoRecordingDuringIdentificationStateCopyWith(
          VideoRecordingDuringIdentificationState value,
          $Res Function(VideoRecordingDuringIdentificationState) then) =
      _$VideoRecordingDuringIdentificationStateCopyWithImpl<$Res,
          VideoRecordingDuringIdentificationState>;
  @useResult
  $Res call(
      {CameraController? controller,
      bool isRecording,
      CameraDescription? camera});
}

/// @nodoc
class _$VideoRecordingDuringIdentificationStateCopyWithImpl<$Res,
        $Val extends VideoRecordingDuringIdentificationState>
    implements $VideoRecordingDuringIdentificationStateCopyWith<$Res> {
  _$VideoRecordingDuringIdentificationStateCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoRecordingDuringIdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? isRecording = null,
    Object? camera = freezed,
  }) {
    return _then(_value.copyWith(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      camera: freezed == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoRecordingDuringIdentificationStateImplCopyWith<$Res>
    implements $VideoRecordingDuringIdentificationStateCopyWith<$Res> {
  factory _$$VideoRecordingDuringIdentificationStateImplCopyWith(
          _$VideoRecordingDuringIdentificationStateImpl value,
          $Res Function(_$VideoRecordingDuringIdentificationStateImpl) then) =
      __$$VideoRecordingDuringIdentificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CameraController? controller,
      bool isRecording,
      CameraDescription? camera});
}

/// @nodoc
class __$$VideoRecordingDuringIdentificationStateImplCopyWithImpl<$Res>
    extends _$VideoRecordingDuringIdentificationStateCopyWithImpl<$Res,
        _$VideoRecordingDuringIdentificationStateImpl>
    implements _$$VideoRecordingDuringIdentificationStateImplCopyWith<$Res> {
  __$$VideoRecordingDuringIdentificationStateImplCopyWithImpl(
      _$VideoRecordingDuringIdentificationStateImpl _value,
      $Res Function(_$VideoRecordingDuringIdentificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoRecordingDuringIdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = freezed,
    Object? isRecording = null,
    Object? camera = freezed,
  }) {
    return _then(_$VideoRecordingDuringIdentificationStateImpl(
      controller: freezed == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController?,
      isRecording: null == isRecording
          ? _value.isRecording
          : isRecording // ignore: cast_nullable_to_non_nullable
              as bool,
      camera: freezed == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as CameraDescription?,
    ));
  }
}

/// @nodoc

class _$VideoRecordingDuringIdentificationStateImpl
    implements _VideoRecordingDuringIdentificationState {
  const _$VideoRecordingDuringIdentificationStateImpl(
      {this.controller, this.isRecording = false, this.camera});

  @override
  final CameraController? controller;
  @override
  @JsonKey()
  final bool isRecording;
  @override
  final CameraDescription? camera;

  @override
  String toString() {
    return 'VideoRecordingDuringIdentificationState(controller: $controller, isRecording: $isRecording, camera: $camera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoRecordingDuringIdentificationStateImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.isRecording, isRecording) ||
                other.isRecording == isRecording) &&
            (identical(other.camera, camera) || other.camera == camera));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, isRecording, camera);

  /// Create a copy of VideoRecordingDuringIdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoRecordingDuringIdentificationStateImplCopyWith<
          _$VideoRecordingDuringIdentificationStateImpl>
      get copyWith =>
          __$$VideoRecordingDuringIdentificationStateImplCopyWithImpl<
              _$VideoRecordingDuringIdentificationStateImpl>(this, _$identity);
}

abstract class _VideoRecordingDuringIdentificationState
    implements VideoRecordingDuringIdentificationState {
  const factory _VideoRecordingDuringIdentificationState(
          {final CameraController? controller,
          final bool isRecording,
          final CameraDescription? camera}) =
      _$VideoRecordingDuringIdentificationStateImpl;

  @override
  CameraController? get controller;
  @override
  bool get isRecording;
  @override
  CameraDescription? get camera;

  /// Create a copy of VideoRecordingDuringIdentificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoRecordingDuringIdentificationStateImplCopyWith<
          _$VideoRecordingDuringIdentificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

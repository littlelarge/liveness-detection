// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_identification_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoIdentificationActorEvent {
  File get video => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File video) videoUploadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File video)? videoUploadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File video)? videoUploadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoUploadRequested value) videoUploadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoUploadRequested value)? videoUploadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoUploadRequested value)? videoUploadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of VideoIdentificationActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoIdentificationActorEventCopyWith<VideoIdentificationActorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoIdentificationActorEventCopyWith<$Res> {
  factory $VideoIdentificationActorEventCopyWith(
          VideoIdentificationActorEvent value,
          $Res Function(VideoIdentificationActorEvent) then) =
      _$VideoIdentificationActorEventCopyWithImpl<$Res,
          VideoIdentificationActorEvent>;
  @useResult
  $Res call({File video});
}

/// @nodoc
class _$VideoIdentificationActorEventCopyWithImpl<$Res,
        $Val extends VideoIdentificationActorEvent>
    implements $VideoIdentificationActorEventCopyWith<$Res> {
  _$VideoIdentificationActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoIdentificationActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_value.copyWith(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoUploadRequestedImplCopyWith<$Res>
    implements $VideoIdentificationActorEventCopyWith<$Res> {
  factory _$$VideoUploadRequestedImplCopyWith(_$VideoUploadRequestedImpl value,
          $Res Function(_$VideoUploadRequestedImpl) then) =
      __$$VideoUploadRequestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File video});
}

/// @nodoc
class __$$VideoUploadRequestedImplCopyWithImpl<$Res>
    extends _$VideoIdentificationActorEventCopyWithImpl<$Res,
        _$VideoUploadRequestedImpl>
    implements _$$VideoUploadRequestedImplCopyWith<$Res> {
  __$$VideoUploadRequestedImplCopyWithImpl(_$VideoUploadRequestedImpl _value,
      $Res Function(_$VideoUploadRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$VideoUploadRequestedImpl(
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$VideoUploadRequestedImpl implements _VideoUploadRequested {
  const _$VideoUploadRequestedImpl({required this.video});

  @override
  final File video;

  @override
  String toString() {
    return 'VideoIdentificationActorEvent.videoUploadRequested(video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoUploadRequestedImpl &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  /// Create a copy of VideoIdentificationActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoUploadRequestedImplCopyWith<_$VideoUploadRequestedImpl>
      get copyWith =>
          __$$VideoUploadRequestedImplCopyWithImpl<_$VideoUploadRequestedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File video) videoUploadRequested,
  }) {
    return videoUploadRequested(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File video)? videoUploadRequested,
  }) {
    return videoUploadRequested?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File video)? videoUploadRequested,
    required TResult orElse(),
  }) {
    if (videoUploadRequested != null) {
      return videoUploadRequested(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoUploadRequested value) videoUploadRequested,
  }) {
    return videoUploadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoUploadRequested value)? videoUploadRequested,
  }) {
    return videoUploadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoUploadRequested value)? videoUploadRequested,
    required TResult orElse(),
  }) {
    if (videoUploadRequested != null) {
      return videoUploadRequested(this);
    }
    return orElse();
  }
}

abstract class _VideoUploadRequested implements VideoIdentificationActorEvent {
  const factory _VideoUploadRequested({required final File video}) =
      _$VideoUploadRequestedImpl;

  @override
  File get video;

  /// Create a copy of VideoIdentificationActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoUploadRequestedImplCopyWith<_$VideoUploadRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoIdentificationActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(VideoIdentificationUploadFailure failure)
        uploadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(VideoIdentificationUploadFailure failure)? uploadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? uploadSuccess,
    TResult Function(VideoIdentificationUploadFailure failure)? uploadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UploadSuccess value) uploadSuccess,
    required TResult Function(_UploadFailure value) uploadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UploadSuccess value)? uploadSuccess,
    TResult? Function(_UploadFailure value)? uploadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UploadSuccess value)? uploadSuccess,
    TResult Function(_UploadFailure value)? uploadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoIdentificationActorStateCopyWith<$Res> {
  factory $VideoIdentificationActorStateCopyWith(
          VideoIdentificationActorState value,
          $Res Function(VideoIdentificationActorState) then) =
      _$VideoIdentificationActorStateCopyWithImpl<$Res,
          VideoIdentificationActorState>;
}

/// @nodoc
class _$VideoIdentificationActorStateCopyWithImpl<$Res,
        $Val extends VideoIdentificationActorState>
    implements $VideoIdentificationActorStateCopyWith<$Res> {
  _$VideoIdentificationActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoIdentificationActorState
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
    extends _$VideoIdentificationActorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'VideoIdentificationActorState.initial()';
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
    required TResult Function() uploadSuccess,
    required TResult Function(VideoIdentificationUploadFailure failure)
        uploadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(VideoIdentificationUploadFailure failure)? uploadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? uploadSuccess,
    TResult Function(VideoIdentificationUploadFailure failure)? uploadFailure,
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
    required TResult Function(_UploadSuccess value) uploadSuccess,
    required TResult Function(_UploadFailure value) uploadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UploadSuccess value)? uploadSuccess,
    TResult? Function(_UploadFailure value)? uploadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UploadSuccess value)? uploadSuccess,
    TResult Function(_UploadFailure value)? uploadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VideoIdentificationActorState {
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
    extends _$VideoIdentificationActorStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl();

  @override
  String toString() {
    return 'VideoIdentificationActorState.inProgress()';
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
    required TResult Function() uploadSuccess,
    required TResult Function(VideoIdentificationUploadFailure failure)
        uploadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(VideoIdentificationUploadFailure failure)? uploadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? uploadSuccess,
    TResult Function(VideoIdentificationUploadFailure failure)? uploadFailure,
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
    required TResult Function(_UploadSuccess value) uploadSuccess,
    required TResult Function(_UploadFailure value) uploadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UploadSuccess value)? uploadSuccess,
    TResult? Function(_UploadFailure value)? uploadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UploadSuccess value)? uploadSuccess,
    TResult Function(_UploadFailure value)? uploadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements VideoIdentificationActorState {
  const factory _InProgress() = _$InProgressImpl;
}

/// @nodoc
abstract class _$$UploadSuccessImplCopyWith<$Res> {
  factory _$$UploadSuccessImplCopyWith(
          _$UploadSuccessImpl value, $Res Function(_$UploadSuccessImpl) then) =
      __$$UploadSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadSuccessImplCopyWithImpl<$Res>
    extends _$VideoIdentificationActorStateCopyWithImpl<$Res,
        _$UploadSuccessImpl> implements _$$UploadSuccessImplCopyWith<$Res> {
  __$$UploadSuccessImplCopyWithImpl(
      _$UploadSuccessImpl _value, $Res Function(_$UploadSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UploadSuccessImpl implements _UploadSuccess {
  const _$UploadSuccessImpl();

  @override
  String toString() {
    return 'VideoIdentificationActorState.uploadSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(VideoIdentificationUploadFailure failure)
        uploadFailure,
  }) {
    return uploadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(VideoIdentificationUploadFailure failure)? uploadFailure,
  }) {
    return uploadSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? uploadSuccess,
    TResult Function(VideoIdentificationUploadFailure failure)? uploadFailure,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UploadSuccess value) uploadSuccess,
    required TResult Function(_UploadFailure value) uploadFailure,
  }) {
    return uploadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UploadSuccess value)? uploadSuccess,
    TResult? Function(_UploadFailure value)? uploadFailure,
  }) {
    return uploadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UploadSuccess value)? uploadSuccess,
    TResult Function(_UploadFailure value)? uploadFailure,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess(this);
    }
    return orElse();
  }
}

abstract class _UploadSuccess implements VideoIdentificationActorState {
  const factory _UploadSuccess() = _$UploadSuccessImpl;
}

/// @nodoc
abstract class _$$UploadFailureImplCopyWith<$Res> {
  factory _$$UploadFailureImplCopyWith(
          _$UploadFailureImpl value, $Res Function(_$UploadFailureImpl) then) =
      __$$UploadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VideoIdentificationUploadFailure failure});

  $VideoIdentificationUploadFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$UploadFailureImplCopyWithImpl<$Res>
    extends _$VideoIdentificationActorStateCopyWithImpl<$Res,
        _$UploadFailureImpl> implements _$$UploadFailureImplCopyWith<$Res> {
  __$$UploadFailureImplCopyWithImpl(
      _$UploadFailureImpl _value, $Res Function(_$UploadFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$UploadFailureImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as VideoIdentificationUploadFailure,
    ));
  }

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoIdentificationUploadFailureCopyWith<$Res> get failure {
    return $VideoIdentificationUploadFailureCopyWith<$Res>(_value.failure,
        (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$UploadFailureImpl implements _UploadFailure {
  const _$UploadFailureImpl({required this.failure});

  @override
  final VideoIdentificationUploadFailure failure;

  @override
  String toString() {
    return 'VideoIdentificationActorState.uploadFailure(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFailureImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFailureImplCopyWith<_$UploadFailureImpl> get copyWith =>
      __$$UploadFailureImplCopyWithImpl<_$UploadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() uploadSuccess,
    required TResult Function(VideoIdentificationUploadFailure failure)
        uploadFailure,
  }) {
    return uploadFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? inProgress,
    TResult? Function()? uploadSuccess,
    TResult? Function(VideoIdentificationUploadFailure failure)? uploadFailure,
  }) {
    return uploadFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? uploadSuccess,
    TResult Function(VideoIdentificationUploadFailure failure)? uploadFailure,
    required TResult orElse(),
  }) {
    if (uploadFailure != null) {
      return uploadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_UploadSuccess value) uploadSuccess,
    required TResult Function(_UploadFailure value) uploadFailure,
  }) {
    return uploadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_UploadSuccess value)? uploadSuccess,
    TResult? Function(_UploadFailure value)? uploadFailure,
  }) {
    return uploadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_UploadSuccess value)? uploadSuccess,
    TResult Function(_UploadFailure value)? uploadFailure,
    required TResult orElse(),
  }) {
    if (uploadFailure != null) {
      return uploadFailure(this);
    }
    return orElse();
  }
}

abstract class _UploadFailure implements VideoIdentificationActorState {
  const factory _UploadFailure(
          {required final VideoIdentificationUploadFailure failure}) =
      _$UploadFailureImpl;

  VideoIdentificationUploadFailure get failure;

  /// Create a copy of VideoIdentificationActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadFailureImplCopyWith<_$UploadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

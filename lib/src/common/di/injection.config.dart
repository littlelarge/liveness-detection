// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:liveness_detection/liveness_detection_sdk.dart' as _i91;
import 'package:liveness_detection/src/application/liveness_detection/liveness_detection_bloc.dart'
    as _i1003;
import 'package:liveness_detection/src/application/otp/otp_bloc.dart' as _i853;
import 'package:liveness_detection/src/application/passport/cheburashka_photo/cheburashka_photo_bloc.dart'
    as _i117;
import 'package:liveness_detection/src/application/passport/passport_actor/passport_actor_bloc.dart'
    as _i386;
import 'package:liveness_detection/src/application/passport/passport_form/passport_form_bloc.dart'
    as _i3;
import 'package:liveness_detection/src/application/video_recording_during_identification/video_recording_during_identification_bloc.dart'
    as _i97;
import 'package:liveness_detection/src/application/web_view/web_view_bloc.dart'
    as _i223;
import 'package:liveness_detection/src/domain/domain.dart' as _i795;
import 'package:liveness_detection/src/domain/video/i_video_identification_repository.dart'
    as _i957;
import 'package:liveness_detection/src/infrastructure/core/injectable_modules.dart'
    as _i622;
import 'package:liveness_detection/src/infrastructure/otp/otp_repository.dart'
    as _i1019;
import 'package:liveness_detection/src/infrastructure/passport/passport_repository.dart'
    as _i957;
import 'package:liveness_detection/src/infrastructure/video/video_identification_repository.dart'
    as _i948;
import 'package:liveness_detection/src/presentation/core/app_sizes.dart'
    as _i286;
import 'package:liveness_detection/src/presentation/core/errors/errors.dart'
    as _i1033;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.factory<_i97.VideoRecordingDuringIdentificationBloc>(
        () => _i97.VideoRecordingDuringIdentificationBloc());
    gh.factory<_i3.PassportFormBloc>(() => _i3.PassportFormBloc());
    gh.lazySingleton<_i1003.LivenessDetectionBloc>(
        () => _i1003.LivenessDetectionBloc());
    gh.lazySingleton<_i286.AppSizes>(() => _i286.AppSizes());
    gh.lazySingleton<_i1033.Errors>(() => _i1033.Errors());
    gh.lazySingleton<_i223.WebViewBloc>(() => _i223.WebViewBloc());
    gh.lazySingleton<_i361.Dio>(
      () => firebaseInjectableModule.dio,
      instanceName: 'livenessDio',
    );
    gh.lazySingleton<_i957.IVideoIdentificationRepository>(() =>
        _i948.VideoIdentificationRepository(
            gh<_i361.Dio>(instanceName: 'livenessDio')));
    gh.lazySingleton<_i91.IOtpRepository>(
        () => _i1019.OtpRepository(gh<_i361.Dio>(instanceName: 'livenessDio')));
    gh.lazySingleton<_i853.OtpBloc>(
        () => _i853.OtpBloc(gh<_i795.IOtpRepository>()));
    gh.lazySingleton<_i795.IPassportRepository>(() =>
        _i957.PassportRepository(gh<_i361.Dio>(instanceName: 'livenessDio')));
    gh.factory<_i117.CheburashkaPhotoBloc>(
        () => _i117.CheburashkaPhotoBloc(gh<_i91.IPassportRepository>()));
    gh.factory<_i386.PassportActorBloc>(
        () => _i386.PassportActorBloc(gh<_i795.IPassportRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i622.FirebaseInjectableModule {}

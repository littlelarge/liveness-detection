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
import 'package:liveness_detection/application/liveness_detection/liveness_detection_bloc.dart'
    as _i471;
import 'package:liveness_detection/application/passport/passport_actor/passport_actor_bloc.dart'
    as _i563;
import 'package:liveness_detection/application/passport/passport_form/passport_form_bloc.dart'
    as _i807;
import 'package:liveness_detection/domain/passport/i_passport_repository.dart'
    as _i529;
import 'package:liveness_detection/infrastructure/core/injectable_modules.dart'
    as _i776;
import 'package:liveness_detection/infrastructure/passport/passport_repository.dart'
    as _i1057;
import 'package:liveness_detection/presentation/core/app_sizes.dart' as _i739;
import 'package:liveness_detection/presentation/core/errors/errors.dart'
    as _i527;
import 'package:liveness_detection/presentation/routes/mobile_auto_router.dart'
    as _i959;

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
    gh.factory<_i471.LivenessDetectionBloc>(
        () => _i471.LivenessDetectionBloc());
    gh.singleton<_i959.AppRouter>(() => _i959.AppRouter());
    gh.lazySingleton<_i807.PassportFormBloc>(() => _i807.PassportFormBloc());
    gh.lazySingleton<_i739.AppSizes>(() => _i739.AppSizes());
    gh.lazySingleton<_i527.Errors>(() => _i527.Errors());
    gh.lazySingleton<_i527.ValueErrors>(() => _i527.ValueErrors());
    gh.lazySingleton<_i361.Dio>(
      () => firebaseInjectableModule.dio,
      instanceName: 'livenessDio',
    );
    gh.lazySingleton<_i529.IPassportRepository>(() =>
        _i1057.PassportRepository(gh<_i361.Dio>(instanceName: 'livenessDio')));
    gh.lazySingleton<_i563.PassportActorBloc>(
        () => _i563.PassportActorBloc(gh<_i529.IPassportRepository>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i776.FirebaseInjectableModule {}

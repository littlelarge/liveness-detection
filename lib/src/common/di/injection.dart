import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/common/di/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
GetIt configureInjection(String env, {GetIt? instance}) =>
    (instance ?? getIt).init(environment: env);

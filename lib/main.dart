import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/application/passport/passport_actor/passport_actor_bloc.dart';
import 'package:liveness_detection/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/common/l10n/app_locales.dart';
import 'package:liveness_detection/common/l10n/gen_l10n/app_localizations.dart';
import 'package:liveness_detection/injection.dart';
import 'package:liveness_detection/presentation/core/theme/app_themes.dart';
import 'package:liveness_detection/presentation/routes/mobile_auto_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
final appRouter = getIt<AppRouter>();

// void main() async {
//   runApp(const LivenessDetectionModule());
// }

Future<void> initializeLivenessDetection() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureInjection(Environment.dev);
  HttpOverrides.global = MyHttpOverrides();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class LivenessDetectionModule extends HookWidget {
  const LivenessDetectionModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<PassportFormBloc>()),
        BlocProvider(create: (context) => getIt<PassportActorBloc>()),
      ],
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(
              390,
              844,
            ),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (context, child) {
              return MaterialApp.router(
                scaffoldMessengerKey: scaffoldKey,
                themeMode: ThemeMode.light,
                theme: AppThemes.light,
                darkTheme: AppThemes.dark,
                title: 'liveness_detection',
                debugShowCheckedModeBanner: false,

                ///Auto router settings
                routeInformationParser: appRouter.defaultRouteParser(),
                routerDelegate: AutoRouterDelegate(
                  appRouter,
                ),
                routeInformationProvider: appRouter.routeInfoProvider(),

                ///Localizations settings
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale(AppLocales.english),
                  Locale(AppLocales.russian),
                ],
                locale: const Locale('ru'),
              );
            },
          );
        },
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

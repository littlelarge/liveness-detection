import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/src/application/web_view/web_view_bloc.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

class LivenessDetectionSdk extends HookWidget {
  const LivenessDetectionSdk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LivenessDetectionSdkInitializer.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MultiBlocProvider(
            providers: [
              // BlocProvider(create: (context) => getIt<PassportFormBloc>()),
              // BlocProvider(create: (context) => getIt<PassportActorBloc>()),
              // BlocProvider(
              //   create: (context) => getIt<VideoRecordingDuringIdentificationBloc>(),
              // ),
              // BlocProvider(create: (context) => getIt<LivenessDetectionBloc>()),
              BlocProvider(create: (context) => getIt<WebViewBloc>()),
              BlocProvider(create: (context) => getIt<OtpBloc>()),
            ],
            child: Navigator(
              onGenerateRoute: (_) => MaterialPageRoute(
                builder: (context) => ScreenUtilInit(
                  designSize: const Size(
                    390,
                    844,
                  ),
                  minTextAdapt: true,
                  splitScreenMode: true,
                  builder: (context, child) {
                    return const WebViewScreen();
                  },
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

const livenessLocalizationDelegates = [
  LivenessLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

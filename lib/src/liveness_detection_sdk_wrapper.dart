import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LivenessDetectionSdk extends HookWidget {
  const LivenessDetectionSdk({Key? key}) : super(key: key);

  // BlocProvider(create: (context) => getIt<PassportFormBloc>()),
  // BlocProvider(create: (context) => getIt<PassportActorBloc>()),
  // BlocProvider(
  //   create: (context) => getIt<VideoRecordingDuringIdentificationBloc>(),
  // ),
  // BlocProvider(create: (context) => getIt<CheburashkaPhotoBloc>()),

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LivenessDetectionSdkInitializer.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Builder(
            builder: (context) {
              return ScreenUtilInit(
                designSize: const Size(
                  390,
                  844,
                ),
                minTextAdapt: true,
                splitScreenMode: true,
                builder: (context, child) {
                  return Localizations.override(
                    context: context,
                    delegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    locale: const Locale('ru'),
                    child: const WebViewScreen(),
                  );
                },
              );
            },
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

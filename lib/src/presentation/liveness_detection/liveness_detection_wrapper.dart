import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/application/web_view/web_view_bloc.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

class LivenessDetectionWrapper extends StatelessWidget {
  const LivenessDetectionWrapper({
    required this.url,
    required this.authorizationToken,
    super.key,
  });

  final String url;
  final String authorizationToken;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LivenessDetectionSdkInitializer.initialize(
        url: url,
        authorizationToken: authorizationToken,
      ),
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

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

class AppNavigator {
  static Future<T?> push<T extends Object?>(
    BuildContext context,
    Widget page,
  ) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) => _LivenessDetectionBlocsProvider(
          page: page,
        ),
      ),
    );
  }

  static Future<T?> pushReplacement<T extends Object?, TO extends Object?>(
    BuildContext context,
    Widget page, {
    TO? result,
  }) {
    return Navigator.of(context).pushReplacement<T, TO>(
      MaterialPageRoute(
        builder: (context) => _LivenessDetectionBlocsProvider(
          page: page,
        ),
        settings: RouteSettings(name: page.runtimeType.toString()),
        maintainState: true,
      ),
      result: result,
    );
  }
}

class _LivenessDetectionBlocsProvider extends StatelessWidget {
  const _LivenessDetectionBlocsProvider({
    required this.page,
  });

  final Widget page;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<PassportFormBloc>()),
        BlocProvider(create: (context) => getIt<PassportActorBloc>()),
        BlocProvider(
          create: (context) => getIt<VideoRecordingDuringIdentificationBloc>(),
        ),
        BlocProvider(create: (context) => getIt<CheburashkaPhotoBloc>()),
      ],
      child: page,
    );
  }
}

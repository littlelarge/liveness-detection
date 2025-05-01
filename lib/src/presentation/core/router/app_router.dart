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
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<PassportFormBloc>()),
            BlocProvider(create: (context) => getIt<PassportActorBloc>()),
            BlocProvider(
              create: (context) =>
                  getIt<VideoRecordingDuringIdentificationBloc>(),
            ),
            BlocProvider(create: (context) => getIt<CheburashkaPhotoBloc>()),
          ],
          child: page,
        ),
      ),
    );
  }
}

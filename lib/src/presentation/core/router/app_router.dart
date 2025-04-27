import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liveness_detection/src/application/application.dart';
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
            BlocProvider.value(value: getIt<PassportFormBloc>()),
            BlocProvider.value(value: getIt<PassportActorBloc>()),
            BlocProvider.value(
              value: getIt<VideoRecordingDuringIdentificationBloc>(),
            ),
          ],
          child: page,
        ),
      ),
    );
  }
}

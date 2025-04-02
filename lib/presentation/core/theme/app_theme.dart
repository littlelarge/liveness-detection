import 'package:flutter/material.dart';
import 'package:liveness_detection/presentation/core/theme/app_colorss.dart';

final lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: AppColorss.colorBgF5F5F5,
  highlightColor: Colors.transparent,
  splashColor: Colors.transparent,
  colorScheme: ColorScheme.fromSeed(seedColor: AppColorss.color100Blue0921B0),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColorss.colorBgF5F5F5,
  ),
);

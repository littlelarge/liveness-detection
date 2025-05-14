import 'package:flutter/material.dart';
import 'package:liveness_detection/src/presentation/core/app_colors.dart';
import 'package:liveness_detection/src/presentation/core/gen/fonts.gen.dart';

abstract final class AppThemes {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily.notoSans,
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.black,
        onPrimary: AppColors.white,
        secondary: AppColors.grayscale50,
        onSecondary: AppColors.grayscale500,
        secondaryContainer: AppColors.grayscale500,
        tertiary: AppColors.grayscale800,
        error: AppColors.failure,
        onError: AppColors.white,
        surface: AppColors.white,
        onSurface: AppColors.black,
      ),
      disabledColor: AppColors.grayscaleDE,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.transparent,
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarColor: AppColors.transparent,
        //   statusBarIconBrightness: Brightness.dark,
        //   statusBarBrightness: Brightness.light,
        // ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.disabled,
        ),
      ),
      scaffoldBackgroundColor: AppColors.primary,
      splashColor: AppColors.grayscale200,
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      fontFamily: FontFamily.notoSans,
      primaryColor: AppColors.primary,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.white,
        onPrimary: AppColors.black,
        secondary: AppColors.grayscale800,
        onSecondary: AppColors.grayscale50,
        secondaryContainer: AppColors.grayscale400,
        tertiary: AppColors.grayscale100,
        error: AppColors.failure,
        onError: AppColors.white,
        surface: AppColors.black,
        onSurface: AppColors.white,
      ),
      disabledColor:
          AppColors.grayscaleDE.withAlpha((255 - (255 * .25)).toInt()),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.grayscale1000,
        surfaceTintColor: AppColors.transparent,
        // systemOverlayStyle: SystemUiOverlayStyle(
        //   statusBarColor: AppColors.transparent,
        //   statusBarIconBrightness: Brightness.light,
        //   statusBarBrightness: Brightness.dark,
        // ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.disabled,
        ),
      ),
      scaffoldBackgroundColor: AppColors.primary,
      splashColor: AppColors.grayscale600,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

abstract final class AppTextStyles {
  static TextStyle notoSans12Regular({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 12.r,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle notoSans14Regular({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 14.r,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle notoSans14SemiBold({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 14.r,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle notoSans16Regular({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 16.r,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle notoSans16SemiBold({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 16.r,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle notoSans18SemiBold({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 18.r,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle notoSans20Bold({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 20.r,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static TextStyle notoSans24SemiBold({Color? color}) => TextStyle(
        fontFamily: FontFamily.notoSans,
        fontSize: 24.r,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle familjenGrotesk24Bold({Color? color}) => TextStyle(
        fontFamily: FontFamily.familjenGrotesk,
        fontSize: 24.r,
        fontWeight: FontWeight.w700,
        color: color,
      );
}

import 'dart:ui';

abstract final class AppColors {
  static Color get transparent => const Color(0x00000000);
  static Color get white => const Color(0xFFFFFFFF);
  static Color get black => const Color(0xFF000000);
  static Color get failure => const Color(0xFFFF5858);
  static Color get success => const Color(0xFF00D02E);
  static Color get warning => const Color(0xFFFFB800);
  static Color get link => const Color(0xFF324DE5);
  static Color get primary => const Color(0xFF0821AF);
  static Color get disabled => const Color(0xFF4C5161);
  static Color get grayscale12 => const Color(0xFF121212);
  static Color get grayscaleDE => const Color(0xFFDEDFE6);
  static Color get grayscale50 => const Color(0xFFF8F8FC);
  static Color get grayscale100 => const Color(0xFFEEEEF6);
  static Color get grayscale200 => const Color(0xFFDEDFE6);
  static Color get grayscale400 => const Color(0xFFAAAAB5);
  static Color get grayscale500 => const Color(0xFF75757D);
  static Color get grayscale600 => const Color(0xFF5C5D65);
  static Color get grayscale800 => const Color(0xFF2F3038);
  static Color get grayscale1000 => const Color(0xFF000010);
  static Color get waitingForOthers => grayscale100;
  static Color get shade1 => const Color(0xFF324DE5);
}

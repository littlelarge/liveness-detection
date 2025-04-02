import 'dart:ui';

extension ColorExtension on Color {
  ColorFilter toColorFilter() => ColorFilter.mode(this, BlendMode.srcIn);
}

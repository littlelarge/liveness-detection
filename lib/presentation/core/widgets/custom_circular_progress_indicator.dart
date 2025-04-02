import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/presentation/core/helpers/helpers.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
    this.radius,
    this.strokeWidth,
    this.backgroundColor,
    this.color,
  }) : _overlayed = false;

  CustomCircularProgressIndicator.overlayed({
    super.key,
  })  : radius = null,
        strokeWidth = null,
        backgroundColor = const Color(0xFF000000).withAlpha(.2.toAlpha()),
        color = null,
        _overlayed = true;

  final double? radius;
  final double? strokeWidth;
  final Color? backgroundColor;
  final Color? color;

  final bool _overlayed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: backgroundColor != null ? 1.sh : null,
      width: backgroundColor != null ? 1.sw : null,
      color: backgroundColor,
      child: Center(
        child: SizedBox(
          height: radius,
          width: radius,
          child: CircularProgressIndicator(
            strokeWidth: strokeWidth ?? 4.r,
            color: color ??
                (_overlayed
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).colorScheme.onPrimary),
          ),
        ),
      ),
    );
  }
}

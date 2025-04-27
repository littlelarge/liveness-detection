import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  const CustomInkWell({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.materialType,
    this.onTap,
    this.decoration,
    this.customBorder,
    this.child,
  });

  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final MaterialType? materialType;
  final void Function()? onTap;
  final BoxDecoration? decoration;
  final ShapeBorder? customBorder;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: materialType ?? MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: decoration?.borderRadius as BorderRadius?,
        customBorder: customBorder,
        child: Ink(
          height: height,
          width: width,
          padding: padding,
          decoration: BoxDecoration(
            color: decoration?.color,
            image: decoration?.image,
            border: decoration?.border,
            borderRadius: decoration?.borderRadius,
            boxShadow: decoration?.boxShadow,
            gradient: decoration?.gradient,
            backgroundBlendMode: decoration?.backgroundBlendMode,
            shape: decoration?.shape ?? BoxShape.rectangle,
          ),
          child: child,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

class CaptureButton extends StatelessWidget {
  const CaptureButton({
    super.key,
    this.onTap,
  }) : _buttonType = _ButtonType.image;

  const CaptureButton.captureVideo({
    super.key,
    this.onTap,
  }) : _buttonType = _ButtonType.captureVideo;

  const CaptureButton.stopVideo({
    super.key,
    this.onTap,
  }) : _buttonType = _ButtonType.stopVideo;

  final void Function()? onTap;

  final _ButtonType _buttonType;

  @override
  Widget build(BuildContext context) {
    Color? color;
    Widget? icon;

    switch (_buttonType) {
      case _ButtonType.image:
        color = AppColors.primaryText;
        icon = Assets.icons.capture.svg(
          colorFilter: color.toColorFilter(),
        );
      case _ButtonType.captureVideo:
        color = AppColors.failure;
        icon = Assets.icons.capture.svg(
          colorFilter: color.toColorFilter(),
        );
      case _ButtonType.stopVideo:
        color = AppColors.failure;
        icon = Icon(
          Icons.stop,
          color: color,
          size: 60.r,
        );
        break;
    }

    return CustomInkWell(
      width: 70.r,
      height: 70.r,
      onTap: onTap,
      customBorder: const CircleBorder(),
      // decoration: const BoxDecoration(
      //   shape: BoxShape.rectangle,
      // ),
      // child: Icon(
      //   icon,
      //   size: size,
      //   color: color,
      // ),
      child: icon,
    );
  }
}

enum _ButtonType {
  image,
  captureVideo,
  stopVideo,
}

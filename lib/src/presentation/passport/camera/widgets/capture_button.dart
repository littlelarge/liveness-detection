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

  BorderRadius get _borderRadius => BorderRadius.circular(30.r);

  @override
  Widget build(BuildContext context) {
    IconData icon;
    double size = 30.r;
    Color? color;

    switch (_buttonType) {
      case _ButtonType.image:
        icon = Icons.camera;
      case _ButtonType.captureVideo:
        icon = Icons.fiber_manual_record;
        size = 60.r;
        color = AppColors.failure;
      case _ButtonType.stopVideo:
        icon = Icons.stop;
        color = AppColors.failure;
        break;
    }
    return Container(
      height: 70.r,
      width: 70.r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _borderRadius,
      ),
      child: CustomInkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Icon(
          icon,
          size: size,
          color: color,
        ),
      ),
    );
  }
}

enum _ButtonType {
  image,
  captureVideo,
  stopVideo,
}

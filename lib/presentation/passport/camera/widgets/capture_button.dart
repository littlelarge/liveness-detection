import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CaptureButton extends StatelessWidget {
  const CaptureButton({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  BorderRadius get _borderRadius => BorderRadius.circular(30.r);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.r,
      width: 70.r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _borderRadius,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          Icons.camera,
          size: 30.r,
        ),
      ),
    );
  }
}

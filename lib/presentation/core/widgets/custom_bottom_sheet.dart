import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/presentation/core/app_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet.withoutPadding({
    super.key,
    required this.children,
  }) : _padding = EdgeInsets.zero;

  CustomBottomSheet.withPadding({
    super.key,
    required this.children,
  }) : _padding = EdgeInsets.only(
          top: topPadding,
          right: horizontalPadding,
          left: horizontalPadding,
        );

  final List<Widget> children;

  final EdgeInsets _padding;

  static double get horizontalPadding => 16.r;
  static double get topPadding => 24.r;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
          top: 6.r,
          child: Container(
            width: 120.r,
            height: 5.r,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
              ),
              color: AppColors.grayscale200,
            ),
          ),
        ),
        Padding(
          padding: _padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...children,
              Gap(60.r),
            ],
          ),
        ),
      ],
    );
  }
}

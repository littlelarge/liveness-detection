import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
  });

  final String text;
  final void Function()? onTap;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;

  static BorderRadius get _borderRadius => BorderRadius.circular(10.r);

  @override
  Widget build(BuildContext context) {
    final effectiveColor = onTap != null
        ? (backgroundColor ?? AppColors.primary)
        : AppColors.disabled;

    return Container(
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(.4.toAlpha()),
            blurRadius: 4.r,
            blurStyle: BlurStyle.normal,
            offset: Offset(0, 4.r),
          ),
        ],
      ),
      child: CustomInkWell(
        onTap: !isLoading ? onTap : null,
        padding: EdgeInsets.symmetric(
          vertical: 17.r,
          horizontal: 20.r,
        ),
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: effectiveColor,
        ),
        child: isLoading
            ? CustomCircularProgressIndicator(
                radius: 30.r,
                strokeWidth: 3.r,
              )
            : Center(
                child: Text(
                  text,
                  style: AppTextStyles.notoSans14Regular(
                    color: textColor ?? AppColors.white,
                  ),
                ),
              ),
      ),
    );
  }
}

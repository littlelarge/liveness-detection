import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/presentation/core/app_colors.dart';
import 'package:liveness_detection/presentation/core/app_text_styles.dart';
import 'package:liveness_detection/presentation/core/common_widgets/custom_ink_well.dart';
import 'package:liveness_detection/presentation/core/widgets/custom_circular_progress_indicator.dart';

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
    return CustomInkWell(
      onTap: !isLoading ? onTap : null,
      padding: EdgeInsets.symmetric(
        vertical: 17.r,
        horizontal: 20.r,
      ),
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        color: onTap != null
            ? (backgroundColor ?? Theme.of(context).primaryColor)
            : AppColors.disabled,
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
    );
  }
}

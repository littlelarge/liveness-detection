import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/presentation/core/app_text_styles.dart';
import 'package:liveness_detection/presentation/core/gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.centerTitle = true,
    this.customTitle,
    this.leading,
    this.actions,
  }) : assert(customTitle == null || title == null);

  final bool centerTitle;
  final String? title;
  final Widget? customTitle;
  final Widget? leading;
  final List<Widget>? actions;

  Widget? get titleWidget {
    if (customTitle != null) {
      return customTitle!;
    } else if (title != null) {
      return Text(
        title!,
        style: AppTextStyles.notoSans20Bold(),
      );
    } else {
      return null;
    }
  }

  static double get height => 50.r;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.r),
      child: AppBar(
        actions: actions,
        toolbarHeight: height,
        centerTitle: centerTitle,
        leading: leading ??
            (ModalRoute.of(context)?.canPop ?? false
                ? IconButton(
                    icon: Assets.icons.back.svg(),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                : null),
        title: titleWidget,
        titleSpacing: 0,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

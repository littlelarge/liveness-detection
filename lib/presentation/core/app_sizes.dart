import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/injection.dart';
import 'package:liveness_detection/presentation/core/widgets/custom_app_bar.dart';

extension ErrorsExtension on BuildContext {
  AppSizes get appSizes => getIt<AppSizes>()..initialize(context: this);
}

@lazySingleton
class AppSizes {
  late BuildContext context;

  void initialize({required BuildContext context}) {
    this.context = context;
  }

  double get screenHeightWithoutStatusBarHeight =>
      1.sh - MediaQuery.of(context).viewPadding.top;

  double get screenHeightWithoutAppBarAndStatusBarHeight =>
      1.sh - CustomAppBar.height - MediaQuery.of(context).viewPadding.top;
}

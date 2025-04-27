import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

final class Utils {
  static void liveness_detectionPrint(Object? object, {String? extraTag}) {
    final formattedExtraTag = extraTag != null ? ' $extraTag' : '';

    if (kDebugMode) {
      debugPrint('${formattedExtraTag}liveness_detection_log ${object.toString()}');
    }
  }

  static void liveness_detectionLog(Object? object, {String? extraTag}) {
    final formattedExtraTag = extraTag != null ? ' $extraTag' : '';

    if (kDebugMode) {
      dev.log('${formattedExtraTag}liveness_detection_log ${object.toString()}');
    }
  }

  static void showSnackBar({
    required BuildContext context,
    required String text,
    Color? backgroundColor,
    Color? textColor,
    Duration? duration,
  }) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        const durationInSeconds = 2;

        ScaffoldMessenger.of(context).clearSnackBars();

        final animationController = AnimationController(
          vsync: ScaffoldMessenger.of(context),
          duration: const Duration(milliseconds: 300),
        );

        final offsetAnimation = Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: animationController,
            curve: Curves.easeOut,
          ),
        );

        animationController.forward();

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.symmetric(
              horizontal: 20.r,
              vertical: 20.r,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            content: SlideTransition(
              position: offsetAnimation,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.r,
                  vertical: 10.r,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.r,
                    ),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.link,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: AppTextStyles.notoSans16Regular(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            duration: duration ??
                const Duration(
                  seconds: durationInSeconds,
                ),
            onVisible: () {
              Future.delayed(
                duration ??
                    const Duration(
                      seconds: durationInSeconds,
                    ),
                () {
                  animationController.reverse();
                },
              );
            },
          ),
        );
      },
    );
  }
}

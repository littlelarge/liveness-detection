import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveness_detection/src/presentation/passport/cheburashka_photo/cheburashka_photo_screen.dart';

class LivenessDetectionSdkScreen extends StatelessWidget {
  const LivenessDetectionSdkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        390,
        844,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return const CheburashkaPhotoScreen();
      },
    );
    ;
  }
}

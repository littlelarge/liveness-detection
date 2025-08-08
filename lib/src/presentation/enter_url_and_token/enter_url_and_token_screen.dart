import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/core/widgets/widgets.dart';

class EnterUrlAndTokenScreen extends HookWidget {
  const EnterUrlAndTokenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final urlController = useTextEditingController();
    final tokenController = useTextEditingController();

    return ScreenUtilInit(
      designSize: const Size(
        390,
        844,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: urlController,
                decoration: const InputDecoration(
                  hintText: 'Введите URL',
                  label: Text(
                    'URL',
                  ),
                ),
              ),
              Gap(20.r),
              TextFormField(
                controller: tokenController,
                decoration: const InputDecoration(
                  hintText: 'Введите токен авторизации',
                  label: Text(
                    'Токен',
                  ),
                ),
              ),
              Gap(20.r),
              CustomButton(
                text: 'Продолжить',
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => LivenessDetectionSdk(
                        url: urlController.text,
                        authorizationToken: tokenController.text,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

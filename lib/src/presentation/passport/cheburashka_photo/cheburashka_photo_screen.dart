import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/core/bloc_listeners/cheburashka_photo_listener.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

class CheburashkaPhotoScreen extends HookWidget {
  const CheburashkaPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback(
          (_) {
            context.read<CheburashkaPhotoBloc>().add(
                  const CheburashkaPhotoEvent.initialized(),
                );
          },
        );
        return () {};
      },
      [],
    );

    return BlocConsumer<CheburashkaPhotoBloc, CheburashkaPhotoState>(
      listener: cheburashkaPhotoListener,
      builder: (context, cheburashkaPhotoState) {
        return Scaffold(
          body: SafeArea(
            child: cheburashkaPhotoState.cameraController != null &&
                    cheburashkaPhotoState.cameraController!.value.isInitialized
                ? Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.r,
                      vertical: 40.r,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Найдите хорошо освещенное место и сфотографируйтесь с паспортом так, как показано ниже',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.notoSans18SemiBold(),
                            ),
                            Assets.icons.cheburashkaPhoto.svg(
                              width: 140.r,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 40.r,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional.topCenter,
                                child: SizedBox(
                                  width: 1.sw / 1.5,
                                  height: 1.sw / 1.2,
                                  child: FittedBox(
                                    fit: BoxFit.cover,
                                    child: Container(
                                      width: cheburashkaPhotoState
                                          .cameraController!
                                          .value
                                          .previewSize!
                                          .height,
                                      height: cheburashkaPhotoState
                                          .cameraController!
                                          .value
                                          .previewSize!
                                          .width,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(80.r),
                                      ),
                                      clipBehavior: Clip.hardEdge,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(80.r),
                                        child: cheburashkaPhotoState
                                                    .capturedImage ==
                                                null
                                            ? CameraPreview(
                                                cheburashkaPhotoState
                                                    .cameraController!,
                                              )
                                            : Image.memory(
                                                cheburashkaPhotoState
                                                    .capturedImage!,
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Gap(30.r),
                              if (cheburashkaPhotoState.capturedImage == null)
                                CaptureButton(
                                  onTap: () {
                                    context.read<CheburashkaPhotoBloc>().add(
                                          const CheburashkaPhotoEvent
                                              .takePhotoButtonPressed(),
                                        );
                                  },
                                )
                              else
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        context
                                            .read<CheburashkaPhotoBloc>()
                                            .add(
                                              const CheburashkaPhotoEvent
                                                  .retryButtonPressed(),
                                            );
                                      },
                                      icon: Assets.icons.regenerate.svg(
                                        width: 50.r,
                                      ),
                                    ),
                                    Gap(20.r),
                                    IconButton(
                                      onPressed: () {
                                        context
                                            .read<CheburashkaPhotoBloc>()
                                            .add(
                                              const CheburashkaPhotoEvent
                                                  .confirmButtonPressed(),
                                            );
                                      },
                                      icon: Assets.icons.check.svg(
                                        width: 50.r,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : const Center(
                    child: CustomCircularProgressIndicator(),
                  ),
          ),
        );
      },
    );
  }
}

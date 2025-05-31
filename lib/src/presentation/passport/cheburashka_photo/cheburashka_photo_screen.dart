import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/presentation/core/bloc_listeners/cheburashka_photo_listener.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_scaffold.dart';

class CheburashkaPhotoScreen extends StatelessWidget {
  const CheburashkaPhotoScreen({super.key});

  Future<void> _disposeCamera(
    BuildContext context,
    CameraController? cameraController,
  ) async {
    if (cameraController?.value.isInitialized ?? false) {
      await cameraController?.dispose();

      if (!context.mounted) return;

      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheburashkaPhotoBloc(getIt<IPassportRepository>())
        ..add(const CheburashkaPhotoEvent.initialized()),
      child: Builder(builder: (context) {
        return BlocConsumer<CheburashkaPhotoBloc, CheburashkaPhotoState>(
          listener: cheburashkaPhotoListener,
          builder: (context, cheburashkaPhotoState) {
            return WillPopScope(
              onWillPop: () async {
                await _disposeCamera(
                  context,
                  cheburashkaPhotoState.cameraController,
                );

                return false;
              },
              child: CustomScaffold(
                appBar: CustomAppBar(
                  onPop: () async {
                    await _disposeCamera(
                      context,
                      cheburashkaPhotoState.cameraController,
                    );
                  },
                ),
                body: SafeArea(
                  child: cheburashkaPhotoState.cameraController != null &&
                          cheburashkaPhotoState
                              .cameraController!.value.isInitialized
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
                                    'Сделайте фото',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.notoSans24SemiBold(
                                      color: AppColors.primaryText,
                                    ),
                                  ),
                                  Gap(4.r),
                                  Text(
                                    'Найдите хорошо освещенное место и сфотографируйтесь с паспортом так, как показано ниже',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.notoSans16Regular(),
                                  ),
                                  Assets.icons.cheburashkaPhoto.svg(
                                    width: 140.r,
                                  ),
                                  Gap(8.r),
                                  Align(
                                    alignment: AlignmentDirectional.topCenter,
                                    child: SizedBox(
                                      width: 230.r,
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
                                ],
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Gap(30.r),
                                    if (cheburashkaPhotoState.capturedImage ==
                                        null)
                                      CaptureButton(
                                        onTap: () {
                                          if (context.mounted) {
                                            context
                                                .read<CheburashkaPhotoBloc>()
                                                .add(
                                                  const CheburashkaPhotoEvent
                                                      .takePhotoButtonPressed(),
                                                );
                                          }
                                        },
                                      )
                                    else if (cheburashkaPhotoState.inProgress)
                                      const CustomCircularProgressIndicator()
                                    else
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (context.mounted) {
                                                context
                                                    .read<
                                                        CheburashkaPhotoBloc>()
                                                    .add(
                                                      const CheburashkaPhotoEvent
                                                          .retryButtonPressed(),
                                                    );
                                              }
                                            },
                                            icon: Assets.icons.regenerate.svg(
                                              width: 50.r,
                                            ),
                                          ),
                                          Gap(20.r),
                                          IconButton(
                                            onPressed: () {
                                              if (context.mounted) {
                                                context
                                                    .read<
                                                        CheburashkaPhotoBloc>()
                                                    .add(
                                                      const CheburashkaPhotoEvent
                                                          .confirmButtonPressed(),
                                                    );
                                              }
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
              ),
            );
          },
        );
      }),
    );
  }
}

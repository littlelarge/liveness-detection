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
                            vertical: 20.r,
                          ),
                          child: Column(
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
                                'Поместите лицо и паспорт в рамки ниже',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.notoSans16Regular(),
                              ),
                              Gap(8.r),
                              Expanded(
                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.r),
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
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: CustomPaint(
                                        painter: FaceFramePainter(),
                                      ),
                                    ),
                                    Positioned.fill(
                                      child: CustomPaint(
                                        painter: PassportFramePainter(),
                                      ),
                                    ),
                                    Positioned(
                                      top: 24.r,
                                      left: 0,
                                      right: 0,
                                      child: Text(
                                        "Поместите лицо в овал",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.notoSans16SemiBold(
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 190.r,
                                      left: 0,
                                      right: 0,
                                      child: Text(
                                        "Поместите паспорт в рамку",
                                        textAlign: TextAlign.center,
                                        style: AppTextStyles.notoSans16SemiBold(
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
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

class FaceFramePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final Rect ovalRect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height * 0.35),
      width: size.width * 0.6,
      height: size.height * 0.5,
    );

    canvas.drawOval(ovalRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class PassportFramePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final Rect rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height * 0.8),
      width: size.width * 0.65,
      height: size.height * 0.25,
    );

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

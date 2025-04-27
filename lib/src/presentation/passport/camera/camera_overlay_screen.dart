import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image/image.dart' as img;
import 'package:liveness_detection/src/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/src/common/l10n/gen_l10n/app_localizations.dart';
import 'package:liveness_detection/src/presentation/core/app_colors.dart';

import 'package:liveness_detection/src/presentation/core/app_text_styles.dart';
import 'package:liveness_detection/src/presentation/passport/camera/widgets/capture_button.dart';
import 'package:liveness_detection/src/presentation/passport/camera/widgets/capture_frame_overlay.dart';

class CameraOverlayScreen extends HookWidget {
  const CameraOverlayScreen({
    super.key,
    required this.side,
  });

  final PassportSide side;

  @override
  Widget build(BuildContext context) {
    final controller = useState<CameraController?>(null);
    final isCameraInitialized = useState(false);
    final touchPosition = useState<Offset?>(null);

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );
    final animation = Tween<double>(begin: 0, end: 30).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );

    useEffect(
      () {
        () async {
          final cameras = await availableCameras();
          if (Platform.isIOS) {
            final camera = cameras
                    .where((e) => e.lensDirection == CameraLensDirection.back)
                    .where((e) =>
                        e.name ==
                        'com.apple.avfoundation.avcapturedevice.built-in_video:5')
                    .firstOrNull ??
                cameras
                    .where((e) => e.lensDirection == CameraLensDirection.back)
                    .first;

            controller.value = CameraController(
              camera,
              ResolutionPreset.high,
            );
          } else if (Platform.isAndroid) {
            controller.value = CameraController(
              cameras
                  .where((e) => e.lensDirection == CameraLensDirection.back)
                  .first,
              ResolutionPreset.high,
            );
          }

          await controller.value!.initialize();
          isCameraInitialized.value = controller.value!.value.isInitialized;
        }();
        return controller.value?.dispose;
      },
      [],
    );

    if (controller.value == null || !isCameraInitialized.value) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    final overlayWidth = 1.sw - 60.r;
    final overlayHeight = (135.r / 196.r) * overlayWidth;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTapDown: (details) async {
            if (controller.value != null) {
              double x = details.localPosition.dx / 1.sw;
              double y = details.localPosition.dy / 1.sh;

              touchPosition.value = details.localPosition;
              animationController.forward(from: 0);

              try {
                await controller.value!.setFocusPoint(Offset(x, y));
              } catch (e) {
                print('Error setting focus point: $e');
              }
            }
          },
          child: Stack(
            children: [
              Positioned.fill(
                child: CameraPreview(controller.value!),
              ),
              if (touchPosition.value != null)
                AnimatedBuilder(
                  animation: animationController,
                  builder: (context, child) {
                    return Positioned(
                      left: touchPosition.value!.dx - animation.value / 2,
                      top: touchPosition.value!.dy - animation.value / 2,
                      child: Container(
                        width: animation.value,
                        height: animation.value,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(
                            1.0 - animationController.value,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              Positioned.fill(
                child: CaptureFrameOverlay(
                  width: overlayWidth,
                  height: overlayHeight,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.0.r,
                      right: 16.0.r,
                      top: 1.sh / 10,
                    ),
                    child: Text(
                      AppLocalizations.of(context).passport_photo_instruction,
                      style: AppTextStyles.notoSans16SemiBold(
                        color: AppColors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CaptureButton(
        onTap: () async {
          if (controller.value != null) {
            try {
              final image = await controller.value!.takePicture();
              final capturedImage =
                  img.decodeImage(File(image.path).readAsBytesSync());

              if (capturedImage != null) {
                if (!context.mounted) return;

                double screenWidth = 1.sw;
                double screenHeight = 1.sh;

                double scaleX = capturedImage.width / screenWidth;
                double scaleY = capturedImage.height / screenHeight;

                double overlayWidth = 1.sw - 60.r;
                double overlayHeight = (135.r / 196.r) * overlayWidth;

                double overlayLeft = (screenWidth - overlayWidth) / 2;
                double overlayTop = (screenHeight - overlayHeight) / 2;

                int startX = (overlayLeft * scaleX).toInt();
                int startY = (overlayTop * scaleY).toInt();
                int cropWidth = (overlayWidth * scaleX).toInt();
                int cropHeight = (overlayHeight * scaleY).toInt();

                startX = startX.clamp(0, capturedImage.width - cropWidth);
                startY = startY.clamp(0, capturedImage.height - cropHeight);
                cropWidth = cropWidth.clamp(0, capturedImage.width - startX);
                cropHeight = cropHeight.clamp(0, capturedImage.height - startY);

                final croppedImage = img.copyCrop(
                  capturedImage,
                  x: startX,
                  y: startY,
                  width: cropWidth,
                  height: cropHeight,
                );

                final image = img.encodeJpg(croppedImage);

                if (!context.mounted) return;

                context.read<PassportFormBloc>().add(
                      PassportFormEvent.passportUploaded(
                        side: side,
                        image: image,
                      ),
                    );

                Navigator.of(context).pop();
              }
            } catch (e) {
              print('Error capturing and cropping image: $e');
            }
          }
        },
      ),
    );
  }
}

enum PassportSide {
  face,
  back,
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/application/liveness_detection/liveness_detection_bloc.dart';
import 'package:liveness_detection/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/injection.dart';
import 'package:liveness_detection/presentation/core/app_text_styles.dart';
import 'package:liveness_detection/presentation/core/bloc_listeners/liveness_detection_listener.dart';
import 'package:liveness_detection/presentation/core/bloc_listeners/passport_form_listener.dart';
import 'package:liveness_detection/presentation/core/widgets/custom_circular_progress_indicator.dart';
import 'package:liveness_detection/presentation/passport/camera/widgets/capture_button.dart';

@RoutePage()
class LivenessDetectionScreen extends HookWidget {
  const LivenessDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(
      () {
        context
            .read<PassportFormBloc>()
            .add(const PassportFormEvent.initialized());
        return () {};
      },
      [],
    );

    return BlocProvider(
      create: (context) => getIt<LivenessDetectionBloc>()
        ..add(
          const LivenessDetectionEvent.initialized(),
        ),
      child: Builder(
        builder: (context) {
          return BlocListener<PassportFormBloc, PassportFormState>(
            listener: passportFormListener,
            listenWhen: passportFormListenWhen,
            child: BlocConsumer<LivenessDetectionBloc, LivenessDetectionState>(
              listener: livenessDetectionListener,
              builder: (context, livenessDetectionState) {
                final livenessDetectionBloc =
                    context.read<LivenessDetectionBloc>();

                return Scaffold(
                  body: SafeArea(
                    child: livenessDetectionBloc.controller != null
                        ? Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 1.sh / 5.5,
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional.topCenter,
                                  child: SizedBox(
                                    width: 1.sw / 1.5,
                                    height: 1.sw / 1.2,
                                    child: ClipOval(
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: SizedBox(
                                          width: livenessDetectionBloc
                                              .controller!
                                              .value
                                              .previewSize!
                                              .height,
                                          height: livenessDetectionBloc
                                              .controller!
                                              .value
                                              .previewSize!
                                              .width,
                                          child: CameraPreview(
                                            livenessDetectionBloc.controller!,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 20.r),
                                        child: Text(
                                          livenessDetectionState.maybeMap(
                                            isDetecting: (state) =>
                                                'Улыбнитесь!',
                                            smileDetected: (state) =>
                                                'Моргните!',
                                            // blinkDetected: (state) =>
                                            //     'Поверните голову вправо!',
                                            blinkDetected: (state) =>
                                                'Посмотрите вверх!',
                                            // headRightDetected: (state) =>
                                            //     'Поверните голову влево!',
                                            // headLeftDetected: (state) =>
                                            //     'Посмотрите вверх!',
                                            headUpDetected: (state) =>
                                                'Посмотрите вниз!',
                                            headDownDetected: (state) =>
                                                'Готово!',
                                            capturingFinalImage: (state) =>
                                                'Посмотрите в камеру прямо и сделайте снимок для дальнейшей идентификации',
                                            orElse: () => '',
                                          ),
                                          style: AppTextStyles.notoSans20Bold(),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      livenessDetectionState.maybeWhen(
                                        capturingFinalImage: (
                                          canCapture,
                                          capturedImage,
                                        ) =>
                                            Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            if (canCapture) ...[
                                              Gap(30.r),
                                              CaptureButton(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          LivenessDetectionBloc>()
                                                      .add(
                                                        const LivenessDetectionEvent
                                                            .captureButtonPressed(),
                                                      );
                                                },
                                              ),
                                            ]
                                          ],
                                        ),
                                        orElse: () => Container(),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : const Center(
                            child: CustomCircularProgressIndicator(),
                          ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

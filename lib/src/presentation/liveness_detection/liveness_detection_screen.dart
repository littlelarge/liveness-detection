import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/src/application/liveness_detection/liveness_detection_bloc.dart';
import 'package:liveness_detection/src/application/passport/passport_form/passport_form_bloc.dart';
import 'package:liveness_detection/src/application/video_recording_during_identification/video_recording_during_identification_bloc.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_scaffold.dart';
import 'package:liveness_detection/src/presentation/presentation.dart';

class LivenessDetectionScreen extends HookWidget {
  const LivenessDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final livenessDetectionBloc = useMemoized(
      () => getIt<LivenessDetectionBloc>(),
    );

    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.read<PassportFormBloc>().add(
                const PassportFormEvent.initialized(),
              );
          livenessDetectionBloc.add(
            const LivenessDetectionEvent.initialized(),
          );
        });
        return () {};
      },
      [],
    );

    return BlocProvider.value(
      value: livenessDetectionBloc,
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

                return CustomScaffold(
                  body: SafeArea(
                    child: livenessDetectionBloc.controller != null &&
                            livenessDetectionBloc
                                .controller!.value.isInitialized
                        ? Stack(
                            children: [
                              Builder(
                                builder: (context) {
                                  final cameraPreviewOvalWidget = Padding(
                                    padding: EdgeInsets.only(
                                      top: 1.sh /
                                          (livenessDetectionState.maybeWhen(
                                            capturingConfirmationVideo: (_) =>
                                                3,
                                            orElse: () => 5.5,
                                          )),
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
                                                livenessDetectionBloc
                                                    .controller!,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );

                                  return livenessDetectionState.maybeWhen(
                                    capturingConfirmationVideo: (
                                      capturedVideo,
                                    ) {
                                      if (capturedVideo == null) {
                                        return cameraPreviewOvalWidget;
                                      } else {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: 40.r,
                                            bottom: 40.r,
                                            right: 20.r,
                                            left: 20.r,
                                          ),
                                          child: Column(
                                            children: [
                                              PreviewVideo(
                                                capturedVideo: capturedVideo,
                                              ),
                                              Gap(20.r),
                                              CustomButton(
                                                text: 'Повторить запись',
                                                onTap: () {},
                                                backgroundColor:
                                                    AppColors.failure,
                                              ),
                                              const Spacer(),
                                              CustomButton(
                                                text: 'Продолжить',
                                                onTap: () {
                                                  AppNavigator.push(
                                                    context,
                                                    const PassportFormScreen(),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    },
                                    orElse: () => cameraPreviewOvalWidget,
                                  );
                                },
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
                                            capturingConfirmationVideo:
                                                (state) {
                                              if (state.capturedVideo == null) {
                                                return 'Глядя в камеру, чётко и без пауз произнесите текст подтверждения.\n\nЯ, [ФИО], подтверждаю свою личность и добровольно подписываю данный документ с использованием электронной цифровой подписи. Я ознакомлен(а) с содержанием документа, понимаю его значение и подтверждаю своё согласие на подписание.';
                                              } else {
                                                return '';
                                              }
                                            },
                                            orElse: () => '',
                                          ),
                                          style:
                                              livenessDetectionState.maybeMap(
                                            capturingConfirmationVideo: (_) =>
                                                AppTextStyles
                                                    .notoSans14SemiBold(),
                                            orElse: () =>
                                                AppTextStyles.notoSans20Bold(),
                                          ),
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
                                                            .captureFinalImageButtonPressed(),
                                                      );
                                                },
                                              ),
                                            ]
                                          ],
                                        ),
                                        capturingConfirmationVideo: (
                                          capturedVideo,
                                        ) =>
                                            BlocBuilder<
                                                VideoRecordingDuringIdentificationBloc,
                                                VideoRecordingDuringIdentificationState>(
                                          builder: (context,
                                              videoRecordingDuringIdentificationState) {
                                            if (capturedVideo == null) {
                                              return Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Gap(30.r),
                                                  if (!videoRecordingDuringIdentificationState
                                                      .isRecording)
                                                    CaptureButton.captureVideo(
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                VideoRecordingDuringIdentificationBloc>()
                                                            .add(
                                                              const VideoRecordingDuringIdentificationEvent
                                                                  .recordingStarted(),
                                                            );
                                                      },
                                                    )
                                                  else
                                                    CaptureButton.stopVideo(
                                                      onTap: () {
                                                        context
                                                            .read<
                                                                VideoRecordingDuringIdentificationBloc>()
                                                            .add(
                                                              const VideoRecordingDuringIdentificationEvent
                                                                  .recordingStoped(),
                                                            );
                                                      },
                                                    ),
                                                ],
                                              );
                                            } else {
                                              return Container();
                                            }
                                          },
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

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/application/video_identification_actor/video_identification_actor_bloc.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/domain/video/i_video_identification_repository.dart';
import 'package:liveness_detection/src/presentation/confirm_code/confirm_code_screen.dart';
import 'package:liveness_detection/src/presentation/core/bloc_listeners/video_recording_during_identification_listener.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_scaffold.dart';
import 'package:liveness_detection/src/presentation/passport/confirmation_video_recording/widgets/preview_video_widget.dart';
import 'package:video_player/video_player.dart';

class ConfirmationVideoRecordingScreen extends HookWidget {
  const ConfirmationVideoRecordingScreen({super.key});

  Future<void> _disposeCamera(
    BuildContext context,
    CameraController? cameraController,
  ) async {
    if (cameraController?.value.isInitialized ?? false) {
      await cameraController?.dispose();
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final videoPlayerController = useState<VideoPlayerController?>(null);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => VideoRecordingDuringIdentificationBloc()
            ..add(
              const VideoRecordingDuringIdentificationEvent.initialized(),
            ),
        ),
        BlocProvider(
          create: (context) => VideoIdentificationActorBloc(
            getIt<IVideoIdentificationRepository>(),
          ),
        )
      ],
      child: Builder(builder: (context) {
        return BlocConsumer<OtpBloc, OtpState>(
          listener: (context, otpState) {
            otpState.sendResult?.fold(
              (l) {},
              (r) {
                if (otpState.checkResult == null) {
                  AppNavigator.push(
                    context,
                    const OtpScreen(),
                  );
                }
              },
            );
          },
          builder: (context, otpState) {
            return BlocListener<VideoIdentificationActorBloc,
                VideoIdentificationActorState>(
              listener: videoIdentificationActorListener,
              child: BlocBuilder<VideoRecordingDuringIdentificationBloc,
                  VideoRecordingDuringIdentificationState>(
                builder: (context, videoRecordingDuringIdentificationState) {
                  return WillPopScope(
                    onWillPop: () async {
                      await _disposeCamera(
                        context,
                        videoRecordingDuringIdentificationState.controller,
                      );

                      return true;
                    },
                    child: CustomScaffold(
                      appBar: CustomAppBar(
                        onPop: () async {
                          await _disposeCamera(
                            context,
                            videoRecordingDuringIdentificationState.controller,
                          );
                        },
                      ),
                      body: SafeArea(
                        child: videoRecordingDuringIdentificationState
                                        .controller !=
                                    null &&
                                videoRecordingDuringIdentificationState
                                    .controller!.value.isInitialized
                            ? Stack(
                                children: [
                                  Builder(
                                    builder: (context) {
                                      final cameraPreviewOvalWidget = Padding(
                                        padding: EdgeInsets.only(
                                          top: 1.sh / 2.8,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional.topCenter,
                                          child: SizedBox(
                                            width: 1.sw / 1.5,
                                            height: 1.sw / 1.2,
                                            child: ClipOval(
                                              child: FittedBox(
                                                fit: BoxFit.cover,
                                                child: SizedBox(
                                                  width:
                                                      videoRecordingDuringIdentificationState
                                                          .controller!
                                                          .value
                                                          .previewSize!
                                                          .height,
                                                  height:
                                                      videoRecordingDuringIdentificationState
                                                          .controller!
                                                          .value
                                                          .previewSize!
                                                          .width,
                                                  child: CameraPreview(
                                                    videoRecordingDuringIdentificationState
                                                        .controller!,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );

                                      if (videoRecordingDuringIdentificationState
                                              .capturedVideo ==
                                          null) {
                                        return cameraPreviewOvalWidget;
                                      } else {
                                        return PreviewVideoWidget(
                                          videoPlayerController:
                                              videoPlayerController.value,
                                          capturedVideo:
                                              videoRecordingDuringIdentificationState
                                                  .capturedVideo!,
                                          onVideoPlayerControllerInitialized:
                                              (value) {
                                            videoPlayerController.value = value;
                                          },
                                        );
                                      }
                                    },
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: [
                                          if (videoRecordingDuringIdentificationState
                                                  .capturedVideo ==
                                              null) ...[
                                            Text(
                                              'Запишите видео',
                                              textAlign: TextAlign.center,
                                              style: AppTextStyles
                                                  .notoSans24SemiBold(
                                                color: AppColors.primaryText,
                                              ),
                                            ),
                                            Gap(4.r),
                                            Text(
                                              'Глядя в камеру, чётко и без пауз произнесите текст подтверждения.\n\nЯ, [ФИО], подтверждаю свою личность и добровольно подписываю данный документ с использованием электронной цифровой подписи. Я ознакомлен(а) с содержанием документа, понимаю его значение и подтверждаю своё согласие на подписание.',
                                              style: AppTextStyles
                                                  .notoSans16Regular(),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                          const Spacer(),
                                          BlocBuilder<
                                              VideoRecordingDuringIdentificationBloc,
                                              VideoRecordingDuringIdentificationState>(
                                            builder: (context,
                                                videoRecordingDuringIdentificationState) {
                                              if (videoRecordingDuringIdentificationState
                                                      .capturedVideo ==
                                                  null) {
                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Gap(30.r),
                                                    if (!videoRecordingDuringIdentificationState
                                                        .isRecording)
                                                      CaptureButton
                                                          .captureVideo(
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
                    ),
                  );
                },
              ),
            );
          },
        );
      }),
    );
  }
}

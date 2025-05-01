import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/confirm_code/confirm_code_screen.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:video_player/video_player.dart';

class ConfirmationVideoRecordingScreen extends HookWidget {
  const ConfirmationVideoRecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPlayerController = useState<VideoPlayerController?>(null);

    useEffect(
      () {
        context.read<VideoRecordingDuringIdentificationBloc>().add(
              const VideoRecordingDuringIdentificationEvent.initialized(),
            );
        return () {};
      },
      [],
    );

    return BlocBuilder<VideoRecordingDuringIdentificationBloc,
        VideoRecordingDuringIdentificationState>(
      builder: (context, videoRecordingDuringIdentificationState) {
        return Scaffold(
          body: SafeArea(
            child: videoRecordingDuringIdentificationState.controller != null &&
                    videoRecordingDuringIdentificationState
                        .controller!.value.isInitialized
                ? Stack(
                    children: [
                      Builder(
                        builder: (context) {
                          final cameraPreviewOvalWidget = Padding(
                            padding: EdgeInsets.only(
                              top: 1.sh / 3,
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
                                    capturedVideo:
                                        videoRecordingDuringIdentificationState
                                            .capturedVideo!,
                                    onVideoPlayerControllerInitialized:
                                        (value) {
                                      videoPlayerController.value = value;
                                    },
                                  ),
                                  Gap(20.r),
                                  CustomButton(
                                    text: 'Повторить запись',
                                    onTap: () {},
                                    backgroundColor: AppColors.failure,
                                  ),
                                  const Spacer(),
                                  CustomButton(
                                    text: 'Продолжить',
                                    onTap: () {
                                      videoPlayerController.value?.pause();

                                      AppNavigator.push(
                                        context,
                                        const ConfirmCodeScreen(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20.r),
                                child: Text(
                                  videoRecordingDuringIdentificationState
                                              .capturedVideo ==
                                          null
                                      ? 'Глядя в камеру, чётко и без пауз произнесите текст подтверждения.\n\nЯ, [ФИО], подтверждаю свою личность и добровольно подписываю данный документ с использованием электронной цифровой подписи. Я ознакомлен(а) с содержанием документа, понимаю его значение и подтверждаю своё согласие на подписание.'
                                      : '',
                                  style: AppTextStyles.notoSans14SemiBold(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              BlocBuilder<
                                  VideoRecordingDuringIdentificationBloc,
                                  VideoRecordingDuringIdentificationState>(
                                builder: (context,
                                    videoRecordingDuringIdentificationState) {
                                  if (videoRecordingDuringIdentificationState
                                          .capturedVideo ==
                                      null) {
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
    );
  }
}

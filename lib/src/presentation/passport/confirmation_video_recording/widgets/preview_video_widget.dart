import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/application/video_identification_actor/video_identification_actor_bloc.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:video_player/video_player.dart';

class PreviewVideoWidget extends StatelessWidget {
  const PreviewVideoWidget({
    super.key,
    required this.videoPlayerController,
    required this.capturedVideo,
    required this.onVideoPlayerControllerInitialized,
  });

  final VideoPlayerController? videoPlayerController;
  final File capturedVideo;
  final void Function(
    VideoPlayerController controller,
  ) onVideoPlayerControllerInitialized;

  @override
  Widget build(BuildContext context) {
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
            onVideoPlayerControllerInitialized:
                onVideoPlayerControllerInitialized,
          ),
          Gap(20.r),
          CustomButton(
            text: 'Повторить запись',
            onTap: () {
              context.read<VideoRecordingDuringIdentificationBloc>().add(
                    const VideoRecordingDuringIdentificationEvent
                        .retryButtonPressed(),
                  );
            },
            backgroundColor: AppColors.failure,
          ),
          const Spacer(),
          CustomButton(
            text: 'Продолжить',
            onTap: () {
              videoPlayerController?.pause();

              context.read<VideoIdentificationActorBloc>().add(
                    VideoIdentificationActorEvent.videoUploadRequested(
                      video: capturedVideo,
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }
}

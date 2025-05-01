import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class PreviewVideo extends HookWidget {
  const PreviewVideo({
    super.key,
    required this.capturedVideo,
    this.onVideoPlayerControllerInitialized,
  });

  final File capturedVideo;
  final void Function(VideoPlayerController value)?
      onVideoPlayerControllerInitialized;

  @override
  Widget build(BuildContext context) {
    final videoPlayerController = useMemoized(
      () => VideoPlayerController.file(capturedVideo)
        ..setLooping(true)
        ..play(),
      [capturedVideo],
    );

    final isInitialized = useState(false);

    useEffect(
      () {
        Future.microtask(() async {
          await videoPlayerController.initialize();
          isInitialized.value = true;
        });

        onVideoPlayerControllerInitialized?.call(videoPlayerController);

        return () {
          videoPlayerController.dispose();
        };
      },
      [videoPlayerController],
    );

    if (!isInitialized.value) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 392.r,
          width: 252.r,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: VideoPlayer(videoPlayerController),
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                videoPlayerController.play();
              },
              icon: const Icon(
                Icons.play_arrow,
              ),
            ),
            IconButton(
              onPressed: () {
                videoPlayerController.pause();
              },
              icon: const Icon(
                Icons.pause,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:liveness_detection/src/domain/video/video_identification_upload_failure.dart';
import 'package:liveness_detection/src/presentation/core/errors/errors.dart';

extension VideoIdentificationFailureMapper on VideoIdentificationUploadFailure {
  String autoMap({required BuildContext context}) {
    return map(
      serverError: (_) => context.errors.serverError,
      unexpectedError: (e) => '${context.errors.unexpectedError}\n\n${e.error}',
      invalidFormat: (_) => context.errors.invalidVideoFormat,
      tooLarge: (_) => context.errors.videoTooLarge,
    );
  }
}

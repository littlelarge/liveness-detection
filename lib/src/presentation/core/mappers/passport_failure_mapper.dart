import 'package:flutter/material.dart';
import 'package:liveness_detection/src/domain/domain.dart';
import 'package:liveness_detection/src/presentation/core/errors/errors.dart';

extension PassportFailureMapper on PassportFailure {
  String autoMap({required BuildContext context}) {
    return map(
      serverError: (_) => context.errors.serverError,
      unexpectedError: (_) => context.errors.unexpectedError,
      csrfFailed: (failure) => failure.error.toString(),

      verificationSuccess: (_) => context.errors.verificationSuccess, // 1001
      authenticationFailed: (_) => context.errors.authenticationFailed, // 2002
      noFaceInLive: (_) => context.errors.noFaceInLive, // 4001
      faceTooSmallLive: (_) => context.errors.faceTooSmallLive, // 4002
      faceBlurryLive: (_) => context.errors.faceBlurryLive, // 4003
      faceNotCenteredLive: (_) => context.errors.faceNotCenteredLive, // 4005
      invalidImageFormatLive: (_) =>
          context.errors.invalidImageFormatLive, // 4006
      livenessCheckFailed: (_) => context.errors.livenessCheckFailed, // 4007
      invalidJson: (_) => context.errors.invalidJson, // 4008
      noFaceInIdCard: (_) => context.errors.noFaceInIdCard, // 4009
      faceTooSmallInIdCard: (_) => context.errors.faceTooSmallInIdCard, // 4010
      faceBlurryInIdCard: (_) => context.errors.faceBlurryInIdCard, // 4011
      faceNotVisibleInIdCard: (_) =>
          context.errors.faceNotVisibleInIdCard, // 4012
      invalidImageFormatIdCard: (_) =>
          context.errors.invalidImageFormatIdCard, // 4013
      imageIsEmpty: (_) => context.errors.imageIsEmpty, // 6001
      imageMustContainTwoFaces: (_) => context.errors.imageMustContainTwoFaces, // 6002
      uploadAndCheckError: (_) => context.errors.uploadAndCheckError,
    );
  }
}

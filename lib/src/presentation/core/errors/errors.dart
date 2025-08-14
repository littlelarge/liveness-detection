import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

extension ErrorsExtension on BuildContext {
  Errors get errors => getIt<Errors>()..initialize(context: this);
}

@lazySingleton
class Errors {
  late BuildContext context;

  void initialize({required BuildContext context}) {
    this.context = context;
  }

  String get serverError => LivenessLocalizations.of(context).server_error;
  String get unexpectedError =>
      LivenessLocalizations.of(context).unexpected_error;
  String get uploadAndCheckError =>
      LivenessLocalizations.of(context).upload_and_check_error;

  String get verificationSuccess =>
      LivenessLocalizations.of(context).verification_success; // 1001
  String get authenticationFailed =>
      LivenessLocalizations.of(context).authentication_failed; // 2002
  String get noFaceInLive =>
      LivenessLocalizations.of(context).no_face_in_live; // 4001
  String get faceTooSmallLive =>
      LivenessLocalizations.of(context).face_too_small_live; // 4002
  String get faceBlurryLive =>
      LivenessLocalizations.of(context).face_blurry_live; // 4003
  String get faceNotCenteredLive =>
      LivenessLocalizations.of(context).face_not_centered_live; // 4005
  String get invalidImageFormatLive =>
      LivenessLocalizations.of(context).invalid_image_format_live; // 4006
  String get livenessCheckFailed =>
      LivenessLocalizations.of(context).liveness_check_failed; // 4007
  String get invalidJson =>
      LivenessLocalizations.of(context).invalid_json; // 4008
  String get noFaceInIdCard =>
      LivenessLocalizations.of(context).no_face_in_id_card; // 4009
  String get faceTooSmallInIdCard =>
      LivenessLocalizations.of(context).face_too_small_in_id_card; // 4010
  String get faceBlurryInIdCard =>
      LivenessLocalizations.of(context).face_blurry_in_id_card; // 4011
  String get faceNotVisibleInIdCard =>
      LivenessLocalizations.of(context).face_not_visible_in_id_card; // 4012
  String get invalidImageFormatIdCard =>
      LivenessLocalizations.of(context).invalid_image_format_id_card; // 4013
  String get imageIsEmpty =>
      LivenessLocalizations.of(context).image_is_empty; // 6001
  String get imageMustContainTwoFaces =>
      LivenessLocalizations.of(context).image_must_contain_two_faces; // 6002

  String get invalidVideoFormat =>
      LivenessLocalizations.of(context).invalid_video_format;
  String get videoTooLarge => LivenessLocalizations.of(context).video_too_large;

  String get wrongCode => LivenessLocalizations.of(context).wrong_code;
}

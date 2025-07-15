// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class LivenessLocalizationsEn extends LivenessLocalizations {
  LivenessLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get front_side => 'Front side';

  @override
  String get back_side => 'Back side';

  @override
  String get passport_photo_instruction =>
      'Find a well-lit spot.\nPlace your passport within the designated area and take a photo, ensuring all details are clearly visible.';

  @override
  String get passport_photo_instruction_form =>
      'Upload a photo of your passport from both sides';

  @override
  String get continuee => 'Continue';

  @override
  String get server_error => 'Server error occurred';

  @override
  String get unexpected_error => 'Unexpected error occurred';

  @override
  String get verification_success => 'Verification successful.';

  @override
  String get authentication_failed =>
      'Authentication failed. Please check your credentials.';

  @override
  String get no_face_in_live => 'No face detected in the live photo.';

  @override
  String get face_too_small_live => 'The live face is too small to process.';

  @override
  String get face_blurry_live => 'The live face is blurry or unclear.';

  @override
  String get face_not_centered_live => 'Please look directly at the camera.';

  @override
  String get invalid_image_format_live =>
      'The uploaded live image format is invalid.';

  @override
  String get liveness_check_failed => 'Liveness check failed.';

  @override
  String get invalid_json => 'Invalid input format.';

  @override
  String get no_face_in_id_card => 'No face detected on the ID card.';

  @override
  String get face_too_small_in_id_card =>
      'The face on the ID card is too small.';

  @override
  String get face_blurry_in_id_card =>
      'The face on the ID card is blurry or unclear.';

  @override
  String get face_not_visible_in_id_card =>
      'The face on the ID card must be clearly visible.';

  @override
  String get invalid_image_format_id_card =>
      'The uploaded ID card image format is invalid.';

  @override
  String get image_is_empty => 'The uploaded image is empty.';

  @override
  String get image_must_contain_two_faces =>
      'The image must contain two faces.';

  @override
  String get invalid_video_format => 'Only .mp4 video files are allowed.';

  @override
  String get video_too_large =>
      'The video is too large. Maximum allowed size is 100 MB.';

  @override
  String get wrong_code => 'Wrong code.';
}

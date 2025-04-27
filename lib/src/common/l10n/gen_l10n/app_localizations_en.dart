import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get front_side => 'Front side';

  @override
  String get back_side => 'Back side';

  @override
  String get passport_photo_instruction => 'Find a well-lit spot.\nPlace your passport within the designated area and take a photo, ensuring all details are clearly visible.';

  @override
  String get passport_photo_instruction_form => 'Upload a photo of your passport from both sides';

  @override
  String get continuee => 'Continue';

  @override
  String get server_error => 'Server error occurred';

  @override
  String get unexpected_error => 'Unexpected error occurred';
}

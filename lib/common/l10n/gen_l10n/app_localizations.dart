import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru')
  ];

  /// No description provided for @front_side.
  ///
  /// In en, this message translates to:
  /// **'Front side'**
  String get front_side;

  /// No description provided for @back_side.
  ///
  /// In en, this message translates to:
  /// **'Back side'**
  String get back_side;

  /// No description provided for @passport_photo_instruction.
  ///
  /// In en, this message translates to:
  /// **'Find a well-lit spot.\nPlace your passport within the designated area and take a photo, ensuring all details are clearly visible.'**
  String get passport_photo_instruction;

  /// No description provided for @passport_photo_instruction_form.
  ///
  /// In en, this message translates to:
  /// **'Upload a photo of your passport from both sides'**
  String get passport_photo_instruction_form;

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @server_error.
  ///
  /// In en, this message translates to:
  /// **'Server error occurred'**
  String get server_error;

  /// No description provided for @unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error occurred'**
  String get unexpected_error;

  /// No description provided for @verification_success.
  ///
  /// In en, this message translates to:
  /// **'Verification successful.'**
  String get verification_success;

  /// No description provided for @authentication_failed.
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Please check your credentials.'**
  String get authentication_failed;

  /// No description provided for @no_face_in_live.
  ///
  /// In en, this message translates to:
  /// **'No face detected in the live photo.'**
  String get no_face_in_live;

  /// No description provided for @face_too_small_live.
  ///
  /// In en, this message translates to:
  /// **'The live face is too small to process.'**
  String get face_too_small_live;

  /// No description provided for @face_blurry_live.
  ///
  /// In en, this message translates to:
  /// **'The live face is blurry or unclear.'**
  String get face_blurry_live;

  /// No description provided for @face_not_centered_live.
  ///
  /// In en, this message translates to:
  /// **'Please look directly at the camera.'**
  String get face_not_centered_live;

  /// No description provided for @invalid_image_format_live.
  ///
  /// In en, this message translates to:
  /// **'The uploaded live image format is invalid.'**
  String get invalid_image_format_live;

  /// No description provided for @liveness_check_failed.
  ///
  /// In en, this message translates to:
  /// **'Liveness check failed.'**
  String get liveness_check_failed;

  /// No description provided for @invalid_json.
  ///
  /// In en, this message translates to:
  /// **'Invalid input format.'**
  String get invalid_json;

  /// No description provided for @no_face_in_id_card.
  ///
  /// In en, this message translates to:
  /// **'No face detected on the ID card.'**
  String get no_face_in_id_card;

  /// No description provided for @face_too_small_in_id_card.
  ///
  /// In en, this message translates to:
  /// **'The face on the ID card is too small.'**
  String get face_too_small_in_id_card;

  /// No description provided for @face_blurry_in_id_card.
  ///
  /// In en, this message translates to:
  /// **'The face on the ID card is blurry or unclear.'**
  String get face_blurry_in_id_card;

  /// No description provided for @face_not_visible_in_id_card.
  ///
  /// In en, this message translates to:
  /// **'The face on the ID card must be clearly visible.'**
  String get face_not_visible_in_id_card;

  /// No description provided for @invalid_image_format_id_card.
  ///
  /// In en, this message translates to:
  /// **'The uploaded ID card image format is invalid.'**
  String get invalid_image_format_id_card;

  /// No description provided for @image_is_empty.
  ///
  /// In en, this message translates to:
  /// **'The uploaded image is empty.'**
  String get image_is_empty;

  /// No description provided for @image_must_contain_two_faces.
  ///
  /// In en, this message translates to:
  /// **'The image must contain two faces.'**
  String get image_must_contain_two_faces;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}

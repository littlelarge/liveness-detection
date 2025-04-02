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

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @documents.
  ///
  /// In en, this message translates to:
  /// **'Documents'**
  String get documents;

  /// No description provided for @templates.
  ///
  /// In en, this message translates to:
  /// **'Templates'**
  String get templates;

  /// No description provided for @folders.
  ///
  /// In en, this message translates to:
  /// **'Folders'**
  String get folders;

  /// No description provided for @trash.
  ///
  /// In en, this message translates to:
  /// **'Trash'**
  String get trash;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @waiting_for_me.
  ///
  /// In en, this message translates to:
  /// **'Waiting for me'**
  String get waiting_for_me;

  /// No description provided for @drafts.
  ///
  /// In en, this message translates to:
  /// **'Drafts'**
  String get drafts;

  /// No description provided for @signed.
  ///
  /// In en, this message translates to:
  /// **'Signed'**
  String get signed;

  /// No description provided for @my_documents.
  ///
  /// In en, this message translates to:
  /// **'My documents'**
  String get my_documents;

  /// No description provided for @no_more_documents.
  ///
  /// In en, this message translates to:
  /// **'No more documents'**
  String get no_more_documents;

  /// No description provided for @my_templates.
  ///
  /// In en, this message translates to:
  /// **'My templates'**
  String get my_templates;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @surname.
  ///
  /// In en, this message translates to:
  /// **'Surname'**
  String get surname;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @signature.
  ///
  /// In en, this message translates to:
  /// **'Signature'**
  String get signature;

  /// No description provided for @manage_signatures.
  ///
  /// In en, this message translates to:
  /// **'Manage signatures'**
  String get manage_signatures;

  /// No description provided for @draw_your_signature_here.
  ///
  /// In en, this message translates to:
  /// **'Draw your signature here'**
  String get draw_your_signature_here;

  /// No description provided for @type_your_name.
  ///
  /// In en, this message translates to:
  /// **'Type your name'**
  String get type_your_name;

  /// No description provided for @you_can_change_url_after_logout.
  ///
  /// In en, this message translates to:
  /// **'You can change URL after logout'**
  String get you_can_change_url_after_logout;

  /// No description provided for @there_are_no.
  ///
  /// In en, this message translates to:
  /// **'There are currently no'**
  String get there_are_no;

  /// No description provided for @data_lc.
  ///
  /// In en, this message translates to:
  /// **'data'**
  String get data_lc;

  /// No description provided for @documents_lc.
  ///
  /// In en, this message translates to:
  /// **'documents'**
  String get documents_lc;

  /// No description provided for @templates_lc.
  ///
  /// In en, this message translates to:
  /// **'templates'**
  String get templates_lc;

  /// No description provided for @folders_lc.
  ///
  /// In en, this message translates to:
  /// **'folders'**
  String get folders_lc;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @restore_document_from_trash.
  ///
  /// In en, this message translates to:
  /// **'Restore Document from Trash?'**
  String get restore_document_from_trash;

  /// No description provided for @are_you_sure_to_delete_document.
  ///
  /// In en, this message translates to:
  /// **'Are your sure about deleting this document? Document will be moved to trash and recall sign invitees'**
  String get are_you_sure_to_delete_document;

  /// No description provided for @are_you_sure_to_move_to_trash.
  ///
  /// In en, this message translates to:
  /// **'Are you sure to delete?'**
  String get are_you_sure_to_move_to_trash;

  /// No description provided for @defaultt.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get defaultt;

  /// No description provided for @select_signature.
  ///
  /// In en, this message translates to:
  /// **'Select signature'**
  String get select_signature;

  /// No description provided for @draw_signature.
  ///
  /// In en, this message translates to:
  /// **'Draw signature'**
  String get draw_signature;

  /// No description provided for @type_signature.
  ///
  /// In en, this message translates to:
  /// **'Type signature'**
  String get type_signature;

  /// No description provided for @upload_signature.
  ///
  /// In en, this message translates to:
  /// **'Upload signature'**
  String get upload_signature;

  /// No description provided for @url.
  ///
  /// In en, this message translates to:
  /// **'URL'**
  String get url;

  /// No description provided for @at.
  ///
  /// In en, this message translates to:
  /// **'at'**
  String get at;

  /// No description provided for @create_template_descr.
  ///
  /// In en, this message translates to:
  /// **'Converting document into a template allows you to re-use the same layout to send multiple invites, create signing links and more.'**
  String get create_template_descr;

  /// No description provided for @template_name.
  ///
  /// In en, this message translates to:
  /// **'Template name'**
  String get template_name;

  /// No description provided for @invite_sent.
  ///
  /// In en, this message translates to:
  /// **'Invite Sent'**
  String get invite_sent;

  /// No description provided for @document_saved.
  ///
  /// In en, this message translates to:
  /// **'Document Saved'**
  String get document_saved;

  /// No description provided for @viewed_the_document.
  ///
  /// In en, this message translates to:
  /// **'Viewed the Document'**
  String get viewed_the_document;

  /// No description provided for @docuemnt_created.
  ///
  /// In en, this message translates to:
  /// **'Document Created'**
  String get docuemnt_created;

  /// No description provided for @finish_and_sign_doc.
  ///
  /// In en, this message translates to:
  /// **'Finish and sign doc'**
  String get finish_and_sign_doc;

  /// No description provided for @document_signed.
  ///
  /// In en, this message translates to:
  /// **'Document Signed'**
  String get document_signed;

  /// No description provided for @rename_description.
  ///
  /// In en, this message translates to:
  /// **'Document name'**
  String get rename_description;

  /// No description provided for @type_something.
  ///
  /// In en, this message translates to:
  /// **'Type something...'**
  String get type_something;

  /// No description provided for @date_field.
  ///
  /// In en, this message translates to:
  /// **'Date field'**
  String get date_field;

  /// No description provided for @digital_signature.
  ///
  /// In en, this message translates to:
  /// **'Digital signature'**
  String get digital_signature;

  /// No description provided for @certificate.
  ///
  /// In en, this message translates to:
  /// **'Certificate'**
  String get certificate;

  /// No description provided for @owner.
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get owner;

  /// No description provided for @valid.
  ///
  /// In en, this message translates to:
  /// **'Valid'**
  String get valid;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'to'**
  String get to;

  /// No description provided for @sign_with_liveness_detection_keys.
  ///
  /// In en, this message translates to:
  /// **'Sign with liveness_detection keys'**
  String get sign_with_liveness_detection_keys;

  /// No description provided for @sign_with_infocom_keys.
  ///
  /// In en, this message translates to:
  /// **'Sign with Infocom keys'**
  String get sign_with_infocom_keys;

  /// No description provided for @use_liveness_detection_keys.
  ///
  /// In en, this message translates to:
  /// **'Use liveness_detection keys'**
  String get use_liveness_detection_keys;

  /// No description provided for @use_liveness_detection_keys_descr.
  ///
  /// In en, this message translates to:
  /// **'Use liveness_detection certificate for signing final PDF'**
  String get use_liveness_detection_keys_descr;

  /// No description provided for @use_infocom_keys.
  ///
  /// In en, this message translates to:
  /// **'Use Infocom Keys'**
  String get use_infocom_keys;

  /// No description provided for @enter_your_inn.
  ///
  /// In en, this message translates to:
  /// **'Enter your INN'**
  String get enter_your_inn;

  /// No description provided for @enter_code.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get enter_code;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @choose_version.
  ///
  /// In en, this message translates to:
  /// **'Choose version'**
  String get choose_version;

  /// No description provided for @select_what_you_want_to_use.
  ///
  /// In en, this message translates to:
  /// **'Select what you want to use'**
  String get select_what_you_want_to_use;

  /// No description provided for @corporate.
  ///
  /// In en, this message translates to:
  /// **'Corporate'**
  String get corporate;

  /// No description provided for @web.
  ///
  /// In en, this message translates to:
  /// **'Web'**
  String get web;

  /// No description provided for @login_to_your_account.
  ///
  /// In en, this message translates to:
  /// **'Login to your account'**
  String get login_to_your_account;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @dont_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get dont_have_an_account;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up now'**
  String get sign_up;

  /// No description provided for @change_url.
  ///
  /// In en, this message translates to:
  /// **'Change URL'**
  String get change_url;

  /// No description provided for @url_format_explanation.
  ///
  /// In en, this message translates to:
  /// **'To enter address correctly, use one of the following formats: \n\n IP address: for example, 10.10.10.10\nor\nDomain name: for example, app.liveness_detection.com\n\nPlease make sure that the address you enter follow one of the specified formats'**
  String get url_format_explanation;

  /// No description provided for @enter_your_url.
  ///
  /// In en, this message translates to:
  /// **'Enter your URL'**
  String get enter_your_url;

  /// No description provided for @not_all_fields_are_filled_in.
  ///
  /// In en, this message translates to:
  /// **'Not all fields are filled in'**
  String get not_all_fields_are_filled_in;

  /// No description provided for @make_sure_it_matchs_government_id.
  ///
  /// In en, this message translates to:
  /// **'Make sure it matches the name on your government ID.'**
  String get make_sure_it_matchs_government_id;

  /// No description provided for @we_will_email_you_a_confirmation_link.
  ///
  /// In en, this message translates to:
  /// **'We will email you a confirmation link.'**
  String get we_will_email_you_a_confirmation_link;

  /// No description provided for @password_strength.
  ///
  /// In en, this message translates to:
  /// **'Password strength'**
  String get password_strength;

  /// No description provided for @must_be_at_least_8.
  ///
  /// In en, this message translates to:
  /// **'Must be at least 8 characters'**
  String get must_be_at_least_8;

  /// No description provided for @cant_include_your_name_or_email.
  ///
  /// In en, this message translates to:
  /// **'Can not include your name or email address'**
  String get cant_include_your_name_or_email;

  /// No description provided for @must_have_at_least_one_symbol_or_number.
  ///
  /// In en, this message translates to:
  /// **'Must have at least one symbol or number'**
  String get must_have_at_least_one_symbol_or_number;

  /// No description provided for @cant_contain_spaces.
  ///
  /// In en, this message translates to:
  /// **'Can not contain spaces'**
  String get cant_contain_spaces;

  /// No description provided for @enter_the_text_on_the_image.
  ///
  /// In en, this message translates to:
  /// **'Enter the text on the image'**
  String get enter_the_text_on_the_image;

  /// No description provided for @by_selecting_agree_and_continue.
  ///
  /// In en, this message translates to:
  /// **'By selecting Agree and continue, I agree to Dynamic Layers'**
  String get by_selecting_agree_and_continue;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @processing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get processing;

  /// No description provided for @ready_for_edit.
  ///
  /// In en, this message translates to:
  /// **'Ready for edit'**
  String get ready_for_edit;

  /// No description provided for @editting.
  ///
  /// In en, this message translates to:
  /// **'Editting'**
  String get editting;

  /// No description provided for @invite_sended.
  ///
  /// In en, this message translates to:
  /// **'Invite sended'**
  String get invite_sended;

  /// No description provided for @one_signed.
  ///
  /// In en, this message translates to:
  /// **'Signed'**
  String get one_signed;

  /// No description provided for @waiting_for_others.
  ///
  /// In en, this message translates to:
  /// **'Waiting for others'**
  String get waiting_for_others;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get registration;

  /// No description provided for @to_successfully_register.
  ///
  /// In en, this message translates to:
  /// **'To successfully register, go to your email and confirm your account'**
  String get to_successfully_register;

  /// No description provided for @the_url_has_been_successfully_setted.
  ///
  /// In en, this message translates to:
  /// **'The URL has been successfully setted'**
  String get the_url_has_been_successfully_setted;

  /// No description provided for @the_document_successfully_moved_to_trash.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully moved to the trash'**
  String get the_document_successfully_moved_to_trash;

  /// No description provided for @the_document_successfully_restored_from_trash.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully restored from the trash'**
  String get the_document_successfully_restored_from_trash;

  /// No description provided for @document_downloading_started_successfully.
  ///
  /// In en, this message translates to:
  /// **'Document downloading started successfully'**
  String get document_downloading_started_successfully;

  /// No description provided for @the_document_successfully_renamed.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully renamed'**
  String get the_document_successfully_renamed;

  /// No description provided for @the_document_successfully_deleted.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully deleted'**
  String get the_document_successfully_deleted;

  /// No description provided for @the_document_successfully_created.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully created'**
  String get the_document_successfully_created;

  /// No description provided for @the_template_successfully_created.
  ///
  /// In en, this message translates to:
  /// **'The template has been successfully created'**
  String get the_template_successfully_created;

  /// No description provided for @the_document_successfully_signed.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully signed'**
  String get the_document_successfully_signed;

  /// No description provided for @code_sent_successfully.
  ///
  /// In en, this message translates to:
  /// **'Сode sent successfully'**
  String get code_sent_successfully;

  /// No description provided for @the_signature_successfully_created.
  ///
  /// In en, this message translates to:
  /// **'The signature has been successfully created'**
  String get the_signature_successfully_created;

  /// No description provided for @the_signature_successfully_deleted.
  ///
  /// In en, this message translates to:
  /// **'The signature has been successfully deleted'**
  String get the_signature_successfully_deleted;

  /// No description provided for @the_signature_successfully_setted_as_default.
  ///
  /// In en, this message translates to:
  /// **'The signature has been successfully setted as default'**
  String get the_signature_successfully_setted_as_default;

  /// No description provided for @the_folder_successfully_created.
  ///
  /// In en, this message translates to:
  /// **'The folder has been successfully created'**
  String get the_folder_successfully_created;

  /// No description provided for @the_folder_successfully_renamed.
  ///
  /// In en, this message translates to:
  /// **'The folder has been successfully renamed'**
  String get the_folder_successfully_renamed;

  /// No description provided for @the_folder_successfully_deleted.
  ///
  /// In en, this message translates to:
  /// **'The folder has been successfully deleted'**
  String get the_folder_successfully_deleted;

  /// No description provided for @the_document_successfully_moved.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully moved'**
  String get the_document_successfully_moved;

  /// No description provided for @the_document_successfully_removed_from_folder.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully removed from the folder'**
  String get the_document_successfully_removed_from_folder;

  /// No description provided for @a_password_reset_link_has_been_successfully_sent_to_your_email.
  ///
  /// In en, this message translates to:
  /// **'A password reset link has been successfully sent to your email'**
  String get a_password_reset_link_has_been_successfully_sent_to_your_email;

  /// No description provided for @the_document_has_been_successfully_declined.
  ///
  /// In en, this message translates to:
  /// **'The document has been successfully declined'**
  String get the_document_has_been_successfully_declined;

  /// No description provided for @authenticated_with_biometric_successfully.
  ///
  /// In en, this message translates to:
  /// **'Authenticated with biometric successfully'**
  String get authenticated_with_biometric_successfully;

  /// No description provided for @error_while_moving_a_document_to_the_trash.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while moving a document to the trash'**
  String get error_while_moving_a_document_to_the_trash;

  /// No description provided for @error_while_restoring_a_document_from_the_trash.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while restoring a document from the trash'**
  String get error_while_restoring_a_document_from_the_trash;

  /// No description provided for @error_while_starting_to_download_the_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while starting to download the document'**
  String get error_while_starting_to_download_the_document;

  /// No description provided for @error_while_renaming_the_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while renaming the document'**
  String get error_while_renaming_the_document;

  /// No description provided for @error_while_deleting_the_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while deleting the document'**
  String get error_while_deleting_the_document;

  /// No description provided for @error_while_creating_the_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while creating the document'**
  String get error_while_creating_the_document;

  /// No description provided for @error_while_creating_a_template.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while creating a template'**
  String get error_while_creating_a_template;

  /// No description provided for @error_while_signing_a_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while signing a document'**
  String get error_while_signing_a_document;

  /// No description provided for @you_dont_have_digital_signature.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have a digital signature. You can create one by going to your profile'**
  String get you_dont_have_digital_signature;

  /// No description provided for @error_while_sending_code.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while sending a code'**
  String get error_while_sending_code;

  /// No description provided for @error_while_creating_a_signature.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while creating a signature'**
  String get error_while_creating_a_signature;

  /// No description provided for @error_while_deleting_a_signature.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while deleting a signature'**
  String get error_while_deleting_a_signature;

  /// No description provided for @error_while_setting_a_signature_as_default.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while setting a signature as default'**
  String get error_while_setting_a_signature_as_default;

  /// No description provided for @error_while_creating_a_folder.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while creating a folder'**
  String get error_while_creating_a_folder;

  /// No description provided for @error_while_renaming_a_folder.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while renaming a folder'**
  String get error_while_renaming_a_folder;

  /// No description provided for @error_while_deleting_a_folder.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while deleting a folder'**
  String get error_while_deleting_a_folder;

  /// No description provided for @error_while_moving_a_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while moving a document'**
  String get error_while_moving_a_document;

  /// No description provided for @error_while_removing_the_document_from_folder.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while removing the document from the folder'**
  String get error_while_removing_the_document_from_folder;

  /// No description provided for @error_while_updating_profile.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while updating profile'**
  String get error_while_updating_profile;

  /// No description provided for @error_while_updating_token.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while updating token'**
  String get error_while_updating_token;

  /// No description provided for @error_while_getting_mobile_token.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while getting mobile token'**
  String get error_while_getting_mobile_token;

  /// No description provided for @error_this_password_is_too_common.
  ///
  /// In en, this message translates to:
  /// **'This password is too common'**
  String get error_this_password_is_too_common;

  /// No description provided for @error_while_authenticate_with_biometric.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while authenticate with biometric'**
  String get error_while_authenticate_with_biometric;

  /// No description provided for @an_error_occurred_while_declining_a_document.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while declining a document'**
  String get an_error_occurred_while_declining_a_document;

  /// No description provided for @cannot_connect_to_infocom_server.
  ///
  /// In en, this message translates to:
  /// **'Cannot connect to Infocom server'**
  String get cannot_connect_to_infocom_server;

  /// No description provided for @there_is_not_enough_information_to_receive_code.
  ///
  /// In en, this message translates to:
  /// **'There is not enough information to receive a code'**
  String get there_is_not_enough_information_to_receive_code;

  /// No description provided for @there_was_an_error_sending_the_password_reset_link.
  ///
  /// In en, this message translates to:
  /// **'There was an error sending the password reset link'**
  String get there_was_an_error_sending_the_password_reset_link;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @is_not_registered_in_the_system.
  ///
  /// In en, this message translates to:
  /// **'is not registered in the system'**
  String get is_not_registered_in_the_system;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @support_descr_1.
  ///
  /// In en, this message translates to:
  /// **'For detailed instructions on using our application, please follow the link to our support site'**
  String get support_descr_1;

  /// No description provided for @support_descr_2.
  ///
  /// In en, this message translates to:
  /// **'There you will find useful guides and manuals that will help you master all the features of our system.'**
  String get support_descr_2;

  /// No description provided for @enter_folder_name.
  ///
  /// In en, this message translates to:
  /// **'Enter folder name'**
  String get enter_folder_name;

  /// No description provided for @rename_folder.
  ///
  /// In en, this message translates to:
  /// **'Rename folder'**
  String get rename_folder;

  /// No description provided for @when_receiving_document_data.
  ///
  /// In en, this message translates to:
  /// **'when receiving document data'**
  String get when_receiving_document_data;

  /// No description provided for @when_receiving_user_signature_data.
  ///
  /// In en, this message translates to:
  /// **'when receiving user signature data'**
  String get when_receiving_user_signature_data;

  /// No description provided for @move_document.
  ///
  /// In en, this message translates to:
  /// **'Move document'**
  String get move_document;

  /// No description provided for @move_document_descr.
  ///
  /// In en, this message translates to:
  /// **'Select the folder you want to move document to'**
  String get move_document_descr;

  /// No description provided for @create_cds.
  ///
  /// In en, this message translates to:
  /// **'Create CDS'**
  String get create_cds;

  /// No description provided for @pin.
  ///
  /// In en, this message translates to:
  /// **'PIN'**
  String get pin;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phone_number;

  /// No description provided for @esia_accept.
  ///
  /// In en, this message translates to:
  /// **'I agree to create an account in the ESIA system'**
  String get esia_accept;

  /// No description provided for @passport_series.
  ///
  /// In en, this message translates to:
  /// **'Passport series'**
  String get passport_series;

  /// No description provided for @passport_number.
  ///
  /// In en, this message translates to:
  /// **'Passport number'**
  String get passport_number;

  /// No description provided for @issue_a_cds.
  ///
  /// In en, this message translates to:
  /// **'To issue a CDS, fill in all the fields below'**
  String get issue_a_cds;

  /// No description provided for @upload_a_photo.
  ///
  /// In en, this message translates to:
  /// **'Upload a photo'**
  String get upload_a_photo;

  /// No description provided for @upload_a_photo_descr.
  ///
  /// In en, this message translates to:
  /// **'Upload your photo for identification'**
  String get upload_a_photo_descr;

  /// No description provided for @select_a_photo.
  ///
  /// In en, this message translates to:
  /// **'Select a photo'**
  String get select_a_photo;

  /// No description provided for @invalid_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get invalid_phone_number;

  /// No description provided for @sender.
  ///
  /// In en, this message translates to:
  /// **'Sender'**
  String get sender;

  /// No description provided for @press_back_again_to_exit.
  ///
  /// In en, this message translates to:
  /// **'Press back again to exit'**
  String get press_back_again_to_exit;

  /// No description provided for @sign_with_digital_signature.
  ///
  /// In en, this message translates to:
  /// **'Sign with DS'**
  String get sign_with_digital_signature;

  /// No description provided for @are_you_sure_you_want_to_delete_the_document_from_folder.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the document from the folder?'**
  String get are_you_sure_you_want_to_delete_the_document_from_folder;

  /// No description provided for @are_you_sure_to_reset_your_password.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to reset your password?'**
  String get are_you_sure_to_reset_your_password;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @are_you_sure_you_want_to_decline_the_document.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to decline the document?'**
  String get are_you_sure_you_want_to_decline_the_document;

  /// No description provided for @signature_request.
  ///
  /// In en, this message translates to:
  /// **'Signature request'**
  String get signature_request;

  /// No description provided for @invited_you_to_sign_the_document.
  ///
  /// In en, this message translates to:
  /// **'invited you to sign the document'**
  String get invited_you_to_sign_the_document;

  /// No description provided for @there_are_no_notifications_here_yet.
  ///
  /// In en, this message translates to:
  /// **'There are no notifications here yet'**
  String get there_are_no_notifications_here_yet;

  /// No description provided for @please_specify_the_reason_for_the_decline.
  ///
  /// In en, this message translates to:
  /// **'Please specify the reason for the decline'**
  String get please_specify_the_reason_for_the_decline;

  /// No description provided for @please_authenticate_with_biometrics_to_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Please authenticate with biometrics to sign in'**
  String get please_authenticate_with_biometrics_to_sign_in;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get or;

  /// No description provided for @declined.
  ///
  /// In en, this message translates to:
  /// **'Declined'**
  String get declined;

  /// No description provided for @are_you_sure_you_want_to_delete_the_box.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the box?'**
  String get are_you_sure_you_want_to_delete_the_box;

  /// No description provided for @captcha_needed.
  ///
  /// In en, this message translates to:
  /// **'An error has occurred. Please enter the captcha to continue'**
  String get captcha_needed;

  /// No description provided for @your_free_trial_has_ended.
  ///
  /// In en, this message translates to:
  /// **'Your free trial has ended'**
  String get your_free_trial_has_ended;

  /// No description provided for @please_subscribe_to_access_liveness_detection_features.
  ///
  /// In en, this message translates to:
  /// **'Please subscribe to access liveness_detection features:'**
  String get please_subscribe_to_access_liveness_detection_features;

  /// No description provided for @send_documents_for_signature.
  ///
  /// In en, this message translates to:
  /// **'Send documents for signature'**
  String get send_documents_for_signature;

  /// No description provided for @simple_and_qualified_signature_support.
  ///
  /// In en, this message translates to:
  /// **'Simple and qualified signature support'**
  String get simple_and_qualified_signature_support;

  /// No description provided for @cloud_digital_signature_support.
  ///
  /// In en, this message translates to:
  /// **'Cloud digital signature support'**
  String get cloud_digital_signature_support;

  /// No description provided for @sign_pdf_documents.
  ///
  /// In en, this message translates to:
  /// **'Sign PDF documents'**
  String get sign_pdf_documents;

  /// No description provided for @unlimited_templates_and_documents.
  ///
  /// In en, this message translates to:
  /// **'Unlimited templates and documents'**
  String get unlimited_templates_and_documents;

  /// No description provided for @redirect_to_the_web_reason.
  ///
  /// In en, this message translates to:
  /// **'At the moment, payment can only be made via the web interface'**
  String get redirect_to_the_web_reason;

  /// No description provided for @whats_your_main_language.
  ///
  /// In en, this message translates to:
  /// **'Whats your main language?'**
  String get whats_your_main_language;

  /// No description provided for @what_user_type_are_you.
  ///
  /// In en, this message translates to:
  /// **'What user type are you?'**
  String get what_user_type_are_you;

  /// No description provided for @connection_setting.
  ///
  /// In en, this message translates to:
  /// **'Connection setting'**
  String get connection_setting;

  /// No description provided for @connection_link.
  ///
  /// In en, this message translates to:
  /// **'Connection link'**
  String get connection_link;

  /// No description provided for @welcome_back.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get welcome_back;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get email_address;

  /// No description provided for @your_password.
  ///
  /// In en, this message translates to:
  /// **'Your password'**
  String get your_password;

  /// No description provided for @sign_in.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get sign_in;

  /// No description provided for @enter_the_code_in_the_image.
  ///
  /// In en, this message translates to:
  /// **'Enter the code in the image'**
  String get enter_the_code_in_the_image;

  /// No description provided for @code.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code;

  /// No description provided for @create_your_account.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get create_your_account;

  /// No description provided for @create_password.
  ///
  /// In en, this message translates to:
  /// **'Create password'**
  String get create_password;

  /// No description provided for @already_have_an_account.
  ///
  /// In en, this message translates to:
  /// **'Already have an account'**
  String get already_have_an_account;

  /// No description provided for @fullname.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullname;

  /// No description provided for @new_folder.
  ///
  /// In en, this message translates to:
  /// **'New folder'**
  String get new_folder;

  /// No description provided for @folder_name.
  ///
  /// In en, this message translates to:
  /// **'Folder name'**
  String get folder_name;

  /// No description provided for @delete_document.
  ///
  /// In en, this message translates to:
  /// **'Delete document?'**
  String get delete_document;

  /// No description provided for @document_name.
  ///
  /// In en, this message translates to:
  /// **'Document name'**
  String get document_name;

  /// No description provided for @document_created.
  ///
  /// In en, this message translates to:
  /// **'Document created'**
  String get document_created;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @pages.
  ///
  /// In en, this message translates to:
  /// **'Pages'**
  String get pages;

  /// No description provided for @document_id.
  ///
  /// In en, this message translates to:
  /// **'Document ID'**
  String get document_id;

  /// No description provided for @template.
  ///
  /// In en, this message translates to:
  /// **'Template'**
  String get template;

  /// No description provided for @client.
  ///
  /// In en, this message translates to:
  /// **'Client'**
  String get client;

  /// No description provided for @event.
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get event;

  /// No description provided for @by.
  ///
  /// In en, this message translates to:
  /// **'By'**
  String get by;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @web_application.
  ///
  /// In en, this message translates to:
  /// **'Web Application'**
  String get web_application;

  /// No description provided for @all_documents.
  ///
  /// In en, this message translates to:
  /// **'All documents'**
  String get all_documents;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @delete_folder.
  ///
  /// In en, this message translates to:
  /// **'Delete folder?'**
  String get delete_folder;

  /// No description provided for @are_you_sure_to_delete_folder.
  ///
  /// In en, this message translates to:
  /// **'Are your sure about deleting this Folder? Documents will not be removed'**
  String get are_you_sure_to_delete_folder;

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

  /// No description provided for @try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get try_again;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @add_signature.
  ///
  /// In en, this message translates to:
  /// **'Add signature'**
  String get add_signature;

  /// No description provided for @set_as_default.
  ///
  /// In en, this message translates to:
  /// **'Set as Default'**
  String get set_as_default;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @move_to_trash.
  ///
  /// In en, this message translates to:
  /// **'Move to trash'**
  String get move_to_trash;

  /// No description provided for @create_template.
  ///
  /// In en, this message translates to:
  /// **'Create Template'**
  String get create_template;

  /// No description provided for @action.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get action;

  /// No description provided for @sign_and_finish.
  ///
  /// In en, this message translates to:
  /// **'Sign and Finish'**
  String get sign_and_finish;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @get_code.
  ///
  /// In en, this message translates to:
  /// **'Get code'**
  String get get_code;

  /// No description provided for @agree_and_continue.
  ///
  /// In en, this message translates to:
  /// **'Agree and continue'**
  String get agree_and_continue;

  /// No description provided for @add_folder.
  ///
  /// In en, this message translates to:
  /// **'Add folder'**
  String get add_folder;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @move.
  ///
  /// In en, this message translates to:
  /// **'Move'**
  String get move;

  /// No description provided for @remove_from_folder.
  ///
  /// In en, this message translates to:
  /// **'Remove from folder'**
  String get remove_from_folder;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @reset_password.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get reset_password;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @decline_title.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline_title;

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @individual.
  ///
  /// In en, this message translates to:
  /// **'Individual'**
  String get individual;

  /// No description provided for @company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get company;

  /// No description provided for @save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get save_changes;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @inbox.
  ///
  /// In en, this message translates to:
  /// **'Inbox / Waiting for me'**
  String get inbox;

  /// No description provided for @outbox.
  ///
  /// In en, this message translates to:
  /// **'Outbox / Waiting for others'**
  String get outbox;

  /// No description provided for @completed_signed.
  ///
  /// In en, this message translates to:
  /// **'Completed / Signed'**
  String get completed_signed;

  /// No description provided for @jan.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get jan;

  /// No description provided for @feb.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get feb;

  /// No description provided for @mar.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get mar;

  /// No description provided for @apr.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get apr;

  /// No description provided for @may.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get may;

  /// No description provided for @jun.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get jun;

  /// No description provided for @jul.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get jul;

  /// No description provided for @aug.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get aug;

  /// No description provided for @sep.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get sep;

  /// No description provided for @oct.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get oct;

  /// No description provided for @nov.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get nov;

  /// No description provided for @dec.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get dec;

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

  /// No description provided for @insufficient_permission_error.
  ///
  /// In en, this message translates to:
  /// **'Insufficient permission'**
  String get insufficient_permission_error;

  /// No description provided for @nothing_found.
  ///
  /// In en, this message translates to:
  /// **'Nothing found'**
  String get nothing_found;

  /// No description provided for @email_already_in_use.
  ///
  /// In en, this message translates to:
  /// **'Email already in use'**
  String get email_already_in_use;

  /// No description provided for @invalid_email_and_password_combination.
  ///
  /// In en, this message translates to:
  /// **'Invalid email and password combination'**
  String get invalid_email_and_password_combination;

  /// No description provided for @wrong_captcha.
  ///
  /// In en, this message translates to:
  /// **'You entered the wrong captcha'**
  String get wrong_captcha;

  /// No description provided for @cant_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Can\'t be empty'**
  String get cant_be_empty;

  /// No description provided for @invalid_url.
  ///
  /// In en, this message translates to:
  /// **'Invalid URL format. Please check format of your URL'**
  String get invalid_url;

  /// No description provided for @invalid_ip.
  ///
  /// In en, this message translates to:
  /// **'Invalid IP format. Please check format of your URL'**
  String get invalid_ip;

  /// No description provided for @invalid_format.
  ///
  /// In en, this message translates to:
  /// **'Invalid format. Please check format of your URL'**
  String get invalid_format;

  /// No description provided for @invalid_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get invalid_email;
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

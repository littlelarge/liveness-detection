import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/injection.dart';
import 'package:liveness_detection/common/l10n/gen_l10n/app_localizations.dart';

extension ErrorsExtension on BuildContext {
  Errors get errors => getIt<Errors>()..initialize(context: this);
  ValueErrors get valueErrors =>
      getIt<ValueErrors>()..initialize(context: this);
}

@lazySingleton
class Errors {
  late BuildContext context;

  void initialize({required BuildContext context}) {
    this.context = context;
  }

  String get serverError => AppLocalizations.of(context).server_error;
  String get unexpectedError => AppLocalizations.of(context).unexpected_error;
  String get insufficientPermissionError =>
      AppLocalizations.of(context).insufficient_permission_error;
  String get nothingFoundError => AppLocalizations.of(context).nothing_found;
  String get emailAlreadyInUseError =>
      AppLocalizations.of(context).email_already_in_use;
  String get invalidEmailAndPasswordCombinationError =>
      AppLocalizations.of(context).invalid_email_and_password_combination;
  String get wrongCaptchaError => AppLocalizations.of(context).wrong_captcha;
  String get errorWhileUpdatingProfile =>
      AppLocalizations.of(context).error_while_updating_profile;
  String get errorWhileUpdatingToken =>
      AppLocalizations.of(context).error_while_updating_token;
  String get errorWhileGettingMobileToken =>
      AppLocalizations.of(context).error_while_getting_mobile_token;
  String get errorThisPasswordIsTooCommon =>
      AppLocalizations.of(context).error_this_password_is_too_common;
  String get captchaNeeded => AppLocalizations.of(context).captcha_needed;
}

@lazySingleton
class ValueErrors {
  late BuildContext context;

  void initialize({required BuildContext context}) {
    this.context = context;
  }

  String get cantBeEmptyError => AppLocalizations.of(context).cant_be_empty;
  String get invalidUrlError => AppLocalizations.of(context).invalid_url;
  String get invalidIpError => AppLocalizations.of(context).invalid_ip;
  String get invalidFormatError => AppLocalizations.of(context).invalid_format;
  String get invalidEmailError => AppLocalizations.of(context).invalid_email;
  String get invalidPhoneNumberError =>
      AppLocalizations.of(context).invalid_phone_number;
}

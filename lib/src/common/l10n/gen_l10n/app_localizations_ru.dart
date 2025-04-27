import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get front_side => 'Лицевая сторона';

  @override
  String get back_side => 'Обратная сторона';

  @override
  String get passport_photo_instruction => 'Выберите место с хорошим освещением.\nРазместите паспорт в обозначенной зоне и сделайте снимок, убедившись, что все данные четко видны.';

  @override
  String get passport_photo_instruction_form => 'Загрузите фотографию вашего паспорта с обеих сторон';

  @override
  String get continuee => 'Продолжить';

  @override
  String get server_error => 'Произошла ошибка сервера';

  @override
  String get unexpected_error => 'Произошла неожиданная ошибка';
}

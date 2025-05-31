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

  @override
  String get verification_success => 'Проверка прошла успешно.';

  @override
  String get authentication_failed => 'Ошибка аутентификации. Проверьте свои данные.';

  @override
  String get no_face_in_live => 'На живом фото не обнаружено лицо.';

  @override
  String get face_too_small_live => 'Лицо на живом фото слишком маленькое для обработки.';

  @override
  String get face_blurry_live => 'Лицо на живом фото размыто или нечетко.';

  @override
  String get face_not_centered_live => 'Пожалуйста, смотрите прямо в камеру.';

  @override
  String get invalid_image_format_live => 'Недопустимый формат изображения для живого фото.';

  @override
  String get liveness_check_failed => 'Проверка на живость не пройдена.';

  @override
  String get invalid_json => 'Неверный формат входных данных.';

  @override
  String get no_face_in_id_card => 'На фото удостоверения личности не обнаружено лицо.';

  @override
  String get face_too_small_in_id_card => 'Лицо на удостоверении слишком маленькое для обработки.';

  @override
  String get face_blurry_in_id_card => 'Лицо на удостоверении личности размыто или нечетко.';

  @override
  String get face_not_visible_in_id_card => 'Лицо на удостоверении личности должно быть чётко видно.';

  @override
  String get invalid_image_format_id_card => 'Недопустимый формат изображения удостоверения личности.';

  @override
  String get image_is_empty => 'Загруженное изображение пустое.';

  @override
  String get image_must_contain_two_faces => 'Изображение должно содержать два лица.';
}

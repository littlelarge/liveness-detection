# Интеграция Liveness Detection SDK в Flutter

Краткое руководство по интеграции Liveness Detection SDK в приложение на Flutter.

## Шаги

1. **Добавьте зависимость**

   Укажите Liveness Detection SDK в файле `pubspec.yaml`:

   ```yaml
   dependencies:
     liveness_detection:
       git:
         url: https://github.com/littlelarge/liveness-detection.git
         ref: main
   ```

2. **Настройте локализацию в MaterialApp**

   В главном файле приложения (например, `main.dart`) обновите `MaterialApp`, добавив делегаты локализации и поддерживаемые локали для Liveness Detection SDK:

   ```dart
   import 'package:liveness_detection/liveness_detection_sdk.dart';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         localizationsDelegates: [
           ...livenessLocalizationDelegates, // Делегаты локализации SDK
         ],
         supportedLocales: const [
           Locale(AppLocales.english), // Поддержка английского языка
           Locale(AppLocales.russian), // Поддержка русского языка
         ],
         locale: Locale(AppLocales.russian), // Установка русского языка по умолчанию
         home: HomeScreen(), // Ваш начальный экран
       );
     }
   }
   ```

3. **Создайте отдельный экран**

   Создайте новый экран Flutter (например, `LivenessDetectionScreen`) для работы с SDK.

4. **Импортируйте SDK**

   В файле экрана импортируйте Liveness Detection SDK:

   ```dart
   import 'package:liveness_detection/liveness_detection_sdk.dart';
   ```

5. **Верните виджет SDK**

   В методе `build` вашего экрана верните виджет `LivenessDetectionSdk`:

   ```dart
   @override
   Widget build(BuildContext context) {
     return LivenessDetectionSdk(
      url: 'your.domain.com',
      authorizationToken: 'your_bearer_token',
     );
   }
   ```

6. **Перенаправьте на экран**

   Из вашего приложения выполните переход на экран `LivenessDetectionScreen`:

   ```dart
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => LivenessDetectionScreen()),
   );
   ```

## Примечания

- Убедитесь, что в файлах `AndroidManifest.xml` и `Info.plist` настроены необходимые разрешения для доступа к камере.
- Тестируйте интеграцию на физическом устройстве, так как SDK требует функциональность камеры, недоступную на эмуляторах.
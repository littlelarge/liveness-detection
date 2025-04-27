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

2. **Создайте отдельный экран**

   Создайте новый экран Flutter (например, `LivenessDetectionScreen`) для работы с SDK.

3. **Импортируйте SDK**

   В файле экрана импортируйте Liveness Detection SDK:

   ```dart
   import 'package:liveness_detection/liveness_detection_sdk.dart';
   ```

4. **Верните виджет SDK**

   В методе `build` вашего экрана верните виджет `LivenessDetectionSdk`:

   ```dart
   @override
   Widget build(BuildContext context) {
     return LivenessDetectionSdk();
   }
   ```

5. **Перенаправьте на экран**

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
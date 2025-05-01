import 'package:liveness_detection/src/domain/domain.dart';

abstract interface class IOtpRepository {
  Future<TOtpResult> sendSmsCode();
  Future<TOtpResult> checkSmsCode({
    required String code,
  });
}

import 'dart:typed_data';

import 'package:liveness_detection/domain/core/typedef/typedefs.dart';

abstract interface class IPassportRepository {
  Future<TPassportResult> checkPassport({
    required Uint8List frontSide,
    required Uint8List backSide,
    required Uint8List face,
  });
}

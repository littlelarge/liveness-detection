import 'dart:typed_data';

import 'package:liveness_detection/src/domain/domain.dart';

abstract interface class IPassportRepository {
  Future<TPassportResult> checkPassport({
    required Uint8List frontSide,
    required Uint8List backSide,
    required Uint8List face,
  });
  Future<TPassportResult> compareCheburashkaPhoto({
    required Uint8List image,
  });
}

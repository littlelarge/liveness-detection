import 'dart:io';
import 'package:liveness_detection/src/domain/domain.dart';

abstract interface class IVideoIdentificationRepository {
  Future<TVideoUploadResult> uploadVideo(File video);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';

part 'video_identification_upload_failure.freezed.dart';

@freezed
sealed class VideoIdentificationUploadFailure
    with _$VideoIdentificationUploadFailure {
  VideoIdentificationUploadFailure._() {
    Utils.liveness_detectionPrint(error);
  }

  factory VideoIdentificationUploadFailure.serverError(Object error) =
      _ServerError;

  factory VideoIdentificationUploadFailure.unexpectedError(Object error) =
      _UnexpectedError;

  factory VideoIdentificationUploadFailure.invalidFormat(Object error) =
      _InvalidFormat;

  factory VideoIdentificationUploadFailure.tooLarge(Object error) =
      _TooLarge;
}

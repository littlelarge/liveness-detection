import 'package:dartz/dartz.dart';
import 'package:liveness_detection/src/domain/domain.dart';
import 'package:liveness_detection/src/domain/video/video_identification_upload_failure.dart';

typedef Value<T> = Either<ValueFailure<T>, T>;

typedef TPassportResult = Either<PassportFailure, Unit>;

typedef TOtpResult = Either<OtpFailure, Unit>;

typedef TVideoUploadResult = Either<VideoIdentificationUploadFailure, Unit>;

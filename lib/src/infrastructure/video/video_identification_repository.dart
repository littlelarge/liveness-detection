import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/domain/domain.dart';
import 'package:liveness_detection/src/domain/video/i_video_identification_repository.dart';
import 'package:liveness_detection/src/domain/video/video_identification_upload_failure.dart';
import 'package:liveness_detection/src/infrastructure/infrastructure.dart';

@LazySingleton(as: IVideoIdentificationRepository)
final class VideoIdentificationRepository
    implements IVideoIdentificationRepository {
  VideoIdentificationRepository(@Named(DioNames.dio) this._dio);

  final Dio _dio;

  @override
  Future<TVideoUploadResult> uploadVideo(File video) async {
    try {
      // return left(VideoIdentificationUploadFailure.serverError('error'));

      final fileName = video.path.split('/').last;

      if (!fileName.endsWith('.mp4')) {
        return left(
          VideoIdentificationUploadFailure.invalidFormat(
            'Only .mp4 files are allowed',
          ),
        );
      }

      final fileLength = await video.length();
      if (fileLength > 100 * 1024 * 1024) {
        return left(
          VideoIdentificationUploadFailure.tooLarge(
            'File too large. Max size is 100 MB.',
          ),
        );
      }

      final formData = FormData.fromMap({
        'video': await MultipartFile.fromFile(video.path, filename: fileName),
      });

      final response = await _dio.post(
        '/api/upload-video/',
        data: formData,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(
          VideoIdentificationUploadFailure.serverError(
            response.data['detail'] ?? 'Unknown error',
          ),
        );
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return left(
          VideoIdentificationUploadFailure.invalidFormat(
            'Only .mp4 files are allowed',
          ),
        );
      } else if (e.response?.statusCode == 413) {
        return left(
          VideoIdentificationUploadFailure.tooLarge(
            'File too large. Max size is 100 MB.',
          ),
        );
      } else if (e.response?.statusCode == 500) {
        return left(
          VideoIdentificationUploadFailure.serverError(
            'Server failed to save the video.',
          ),
        );
      }

      return left(VideoIdentificationUploadFailure.serverError(e));
    } catch (e) {
      return left(
        VideoIdentificationUploadFailure.unexpectedError(e.toString()),
      );
    }
  }
}

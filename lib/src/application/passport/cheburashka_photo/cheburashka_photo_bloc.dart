import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';

part 'cheburashka_photo_event.dart';
part 'cheburashka_photo_state.dart';
part 'cheburashka_photo_bloc.freezed.dart';

@injectable
class CheburashkaPhotoBloc
    extends Bloc<CheburashkaPhotoEvent, CheburashkaPhotoState> {
  CheburashkaPhotoBloc(this.passportRepository)
      : super(CheburashkaPhotoState.initial()) {
    on<CheburashkaPhotoEvent>(
      (event, emit) async {
        await event.map(
          initialized: (e) async {
            final cameras = await availableCameras();
            if (cameras.isNotEmpty) {
              final frontCamera = cameras.firstWhere(
                (camera) => camera.lensDirection == CameraLensDirection.front,
                orElse: () => cameras[0],
              );

              final controller = CameraController(
                frontCamera,
                ResolutionPreset.medium,
              );

              if (!(controller.value.isInitialized)) {
                await controller.initialize();
              }

              emit(
                CheburashkaPhotoState.initial().copyWith(
                  cameraController: controller,
                ),
              );
            } else {
              Utils.liveness_detectionPrint('Нет доступных камер');
            }
          },
          takePhotoButtonPressed: (_) async {
            final capturedImage = await _captureImage(state.cameraController);

            if (capturedImage != null) {
              emit(
                state.copyWith(
                  capturedImage: capturedImage,
                ),
              );
            }
          },
          retryButtonPressed: (e) async {
            add(const CheburashkaPhotoEvent.initialized());
          },
          confirmButtonPressed: (e) async {
            final capturedImage = state.capturedImage;
            if (capturedImage != null) {
              final failureOrSuccess =
                  await passportRepository.compareCheburashkaPhoto(
                image: capturedImage,
              );

              emit(
                state.copyWith(
                  compareResult: failureOrSuccess,
                ),
              );
            }
          },
        );
      },
    );
  }

  final IPassportRepository passportRepository;

  Future<Uint8List?> _captureImage(CameraController? controller) async {
    try {
      if (controller == null || !controller.value.isInitialized) {
        return null;
      }

      final XFile imageFile = await controller.takePicture();
      final Uint8List bytes = await imageFile.readAsBytes();

      Image? image = decodeImage(bytes);
      if (image == null) return null;

      return Uint8List.fromList(encodeJpg(image));
    } catch (e) {
      Utils.liveness_detectionPrint(
        'Ошибка при захвате финального изображения: $e',
      );

      return null;
    }
  }
}

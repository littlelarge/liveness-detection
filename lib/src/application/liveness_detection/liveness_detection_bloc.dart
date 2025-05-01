// ignore_for_file: avoid_init_to_null
import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image/image.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/application/application.dart';
import 'package:liveness_detection/src/common/common.dart';
import 'package:liveness_detection/src/common/di/injection.dart';

part 'liveness_detection_event.dart';
part 'liveness_detection_state.dart';
part 'liveness_detection_bloc.freezed.dart';

@lazySingleton
class LivenessDetectionBloc
    extends Bloc<LivenessDetectionEvent, LivenessDetectionState> {
  LivenessDetectionBloc() : super(const LivenessDetectionState.initial()) {
    on<LivenessDetectionEvent>(
      (event, emit) async {
        await event.map(
          initialized: (_) async {
            _faceDetector = FaceDetector(
              options: FaceDetectorOptions(
                enableClassification: true,
                enableLandmarks: true,
                enableTracking: true,
              ),
            );

            add(const LivenessDetectionEvent.initCameras());
          },
          initCameras: (_) async {
            cameras = await availableCameras();
            if (cameras.isNotEmpty) {
              final frontCamera = cameras.firstWhere(
                (camera) => camera.lensDirection == CameraLensDirection.front,
                orElse: () => cameras[0],
              );

              _controller = CameraController(
                frontCamera,
                ResolutionPreset.medium,
              );

              if (!(_controller != null && _controller!.value.isInitialized)) {
                await _controller!.initialize();

                getIt<VideoRecordingDuringIdentificationBloc>().add(
                  const VideoRecordingDuringIdentificationEvent.initialized(),
                );
              }

              add(const LivenessDetectionEvent.startDetection());

              emit(const LivenessDetectionState.isDetecting());
            } else {
              Utils.liveness_detectionPrint('Нет доступных камер');
            }
          },
          startDetection: (_) async {
            _controller?.startImageStream(
              (image) async {
                final inputImage = _convertCameraImage(image);
                final faces = await _faceDetector?.processImage(inputImage);

                if (faces != null) {
                  Utils.liveness_detectionPrint(
                      'Обнаружено лиц: ${faces.length}');

                  for (Face face in faces) {
                    add(LivenessDetectionEvent.checkLiveness(face));
                  }
                }
              },
            );
          },
          checkLiveness: (e) async {
            if (state is _IsDetecting &&
                e.face.smilingProbability != null &&
                e.face.smilingProbability! > .90) {
              emit(const LivenessDetectionState.smileDetected());
            }

            if (state is _SmileDetected) {
              if (e.face.leftEyeOpenProbability != null &&
                  e.face.rightEyeOpenProbability != null) {
                if (e.face.leftEyeOpenProbability! < 0.1 ||
                    e.face.rightEyeOpenProbability! < 0.1) {
                  emit(const LivenessDetectionState.blinkDetected());
                }
              }
            }

            final headY = e.face.headEulerAngleY ?? 0;
            final headX = e.face.headEulerAngleX ?? 0;

            Utils.liveness_detectionLog(
              'право/лево = $headY, вверх/вниз = $headX',
              extraTag: '#liveness_detection',
            );

            // bool isHeadTurnedRight = headY > 40;
            // bool isHeadTurnedLeft = headY < -40;

            // if (state is _BlinkDetected && isHeadTurnedRight) {
            //   emit(const LivenessDetectionState.headRightDetected());
            // } else if (state is _HeadRightDetected && isHeadTurnedLeft) {
            //   emit(const LivenessDetectionState.headLeftDetected());
            // } else
            if (state is _BlinkDetected && headX > 20) {
              emit(const LivenessDetectionState.headUpDetected());
            } else if (state is _HeadUpDetected && headX < -15) {
              emit(const LivenessDetectionState.headDownDetected());
              emit(const LivenessDetectionState.livenessConfirmed());
              emit(const LivenessDetectionState.capturingFinalImage());
            } else if (state is _CapturingFinalImage) {
              if (headY.abs() < 10 && headX.abs() < 10) {
                emit(
                  const LivenessDetectionState.capturingFinalImage(
                    canCaptureFacePhoto: true,
                  ),
                );
              } else {
                emit(
                  const LivenessDetectionState.capturingFinalImage(
                    canCaptureFacePhoto: false,
                  ),
                );
              }
            }
          },
          resetDetection: (_) {
            emit(const LivenessDetectionState.isDetecting());

            add(const LivenessDetectionEvent.startDetection());
          },
          captureFinalImageButtonPressed: (e) async {
            final capturedImage = await _captureFinalImage();

            if (capturedImage != null) {
              emit(
                LivenessDetectionState.capturingFinalImage(
                  capturedImage: capturedImage,
                ),
              );

              emit(
                const LivenessDetectionState.capturingConfirmationVideo(),
              );

              _controller?.stopImageStream();
            }
          },
          confirmationVideoCaptured: (e) {
            emit(
              LivenessDetectionState.capturingConfirmationVideo(
                capturedVideo: e.capturedVideo,
              ),
            );
          },
        );
      },
    );
  }

  List<CameraDescription> cameras = [];
  CameraController? _controller = null;
  FaceDetector? _faceDetector = null;

  CameraController? get controller => _controller;

  Future<Uint8List?> _captureFinalImage() async {
    try {
      if (_controller == null || !_controller!.value.isInitialized) {
        return null;
      }

      final XFile imageFile = await _controller!.takePicture();
      final Uint8List bytes = await imageFile.readAsBytes();

      Image? image = decodeImage(bytes);
      if (image == null) return null;

      return Uint8List.fromList(encodeJpg(image));
    } catch (e) {
      Utils.liveness_detectionPrint(
          'Ошибка при захвате финального изображения: $e');
      return null;
    }
  }

  Uint8List _convertYUV420ToNV21(CameraImage image) {
    final width = image.width;
    final height = image.height;

    final yPlane = image.planes[0];
    final uPlane = image.planes[1];
    final vPlane = image.planes[2];

    final yBuffer = yPlane.bytes;
    final uBuffer = uPlane.bytes;
    final vBuffer = vPlane.bytes;

    final numPixels = width * height + (width * height ~/ 2);
    final nv21 = Uint8List(numPixels);

    int idY = 0;
    int idUV = width * height;
    final uvWidth = width ~/ 2;
    final uvHeight = height ~/ 2;

    final yRowStride = yPlane.bytesPerRow;
    final yPixelStride = yPlane.bytesPerPixel ?? 1;
    final uvRowStride = uPlane.bytesPerRow;
    final uvPixelStride = uPlane.bytesPerPixel ?? 2;

    for (int y = 0; y < height; ++y) {
      final yOffset = y * yRowStride;
      for (int x = 0; x < width; ++x) {
        nv21[idY++] = yBuffer[yOffset + x * yPixelStride];
      }
    }

    for (int y = 0; y < uvHeight; ++y) {
      final uvOffset = y * uvRowStride;
      for (int x = 0; x < uvWidth; ++x) {
        final bufferIndex = uvOffset + (x * uvPixelStride);
        nv21[idUV++] = vBuffer[bufferIndex];
        nv21[idUV++] = uBuffer[bufferIndex];
      }
    }

    return nv21;
  }

  InputImage _convertCameraImage(CameraImage image) {
    if (Platform.isAndroid) {
      Uint8List nv21Data = _convertYUV420ToNV21(image);

      return InputImage.fromBytes(
        bytes: nv21Data,
        metadata: InputImageMetadata(
          size: Size(image.width.toDouble(), image.height.toDouble()),
          rotation: InputImageRotation.rotation0deg,
          format: InputImageFormat.nv21,
          bytesPerRow: image.width,
        ),
      );
    } else if (Platform.isIOS) {
      return InputImage.fromBytes(
        bytes: image.planes[0].bytes,
        metadata: InputImageMetadata(
          size: Size(image.width.toDouble(), image.height.toDouble()),
          rotation: InputImageRotation.rotation0deg,
          format: InputImageFormat.bgra8888,
          bytesPerRow: image.planes[0].bytesPerRow,
        ),
      );
    } else {
      throw Exception('Неподдерживаемая платформа');
    }
  }

  @override
  Future<void> close() {
    _controller?.dispose();
    _faceDetector?.close();
    return super.close();
  }
}

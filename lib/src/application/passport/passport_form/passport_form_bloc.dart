import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/presentation/presentation.dart';

part 'passport_form_event.dart';
part 'passport_form_state.dart';
part 'passport_form_bloc.freezed.dart';

@injectable
class PassportFormBloc extends Bloc<PassportFormEvent, PassportFormState> {
  PassportFormBloc() : super(PassportFormState.initial()) {
    on<PassportFormEvent>(
      (event, emit) {
        event.map(
          initialized: (_) {
            emit(PassportFormState.initial());
          },
          passportUploaded: (e) {
            switch (e.side) {
              case PassportSide.face:
                emit(state.copyWith(frontSide: e.image));
              case PassportSide.back:
                emit(state.copyWith(backSide: e.image));
            }
          },
          facePhotoUploaded: (e) {
            emit(state.copyWith(facePhoto: e.image));
          },
          confirmationVideoAdded: (e) {
            emit(
              state.copyWith(
                confirmationVideo: e.confirmationVideo,
              ),
            );
          },
        );
      },
    );
  }
}

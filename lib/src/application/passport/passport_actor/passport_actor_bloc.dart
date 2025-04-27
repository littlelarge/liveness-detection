import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/domain/domain.dart';

part 'passport_actor_event.dart';
part 'passport_actor_state.dart';
part 'passport_actor_bloc.freezed.dart';

@lazySingleton
class PassportActorBloc extends Bloc<PassportActorEvent, PassportActorState> {
  PassportActorBloc(this._passportRepository)
      : super(const PassportActorState.initial()) {
    on<PassportActorEvent>(
      (event, emit) async {
        await event.map(
          continueButtonPressed: (e) async {
            emit(const PassportActorState.inProgress());

            final failureOrSuccess = await _passportRepository.checkPassport(
              frontSide: e.frontSide,
              backSide: e.backSide,
              face: e.face,
            );

            failureOrSuccess.fold(
              (l) => emit(
                PassportActorState.checkFailure(
                  failure: l,
                ),
              ),
              (r) => emit(
                const PassportActorState.checkSuccess(),
              ),
            );
          },
        );
      },
    );
  }

  final IPassportRepository _passportRepository;
}

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/domain/domain.dart';

part 'otp_event.dart';
part 'otp_state.dart';
part 'otp_bloc.freezed.dart';

@lazySingleton
class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc(this._otpRepository) : super(OtpState.initial()) {
    on<OtpEvent>(
      (event, emit) async {
        await event.map(
          resetCheckResult: (e) {
            emit(state.copyWith(checkResult: null));
          },
          codeSended: (e) async {
            emit(state.copyWith(inProgress: true));

            final failureOrSuccess = await _otpRepository.sendSmsCode();

            emit(
              state.copyWith(
                sendResult: failureOrSuccess,
                inProgress: false,
              ),
            );
          },
          codeChecked: (e) async {
            emit(state.copyWith(inProgress: true));

            final failureOrSuccess = await _otpRepository.checkSmsCode(
              code: e.code,
            );

            emit(
              state.copyWith(
                checkResult: failureOrSuccess,
                inProgress: false,
              ),
            );
          },
        );
      },
    );
  }

  final IOtpRepository _otpRepository;
}

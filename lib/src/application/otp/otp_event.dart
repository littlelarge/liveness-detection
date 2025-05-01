part of 'otp_bloc.dart';

@freezed
class OtpEvent with _$OtpEvent {
  const factory OtpEvent.codeSended() = _CodeSended;
  const factory OtpEvent.codeChecked({
    required String code,
  }) = _CodeChecked;
}

part of 'otp_bloc.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    TOtpResult? sendResult,
    TOtpResult? checkResult,
  }) = _OtpState;

  factory OtpState.initial() => const OtpState();
}

part of 'web_view_bloc.dart';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState.initial({
    required String link,
  }) = _Initial;

  const factory WebViewState.checked({
    required String link,
  }) = _Checked;
}

part of 'web_view_bloc.dart';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState.initial({
    required String link,
    required String currentDocumentLink,
  }) = _Initial;

  const factory WebViewState.checked({
    required String link,
    required String currentDocumentLink,
  }) = _Checked;
}

part of 'web_view_bloc.dart';

@freezed
class WebViewEvent with _$WebViewEvent {
  const factory WebViewEvent.currentDocumentLinkInitialized({
    required String link,
  }) = _CurrentDocumentLinkInitialized;
  const factory WebViewEvent.indentificationPassed() = _IndentificationPassed;
}

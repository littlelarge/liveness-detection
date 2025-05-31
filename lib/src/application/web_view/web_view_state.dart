part of 'web_view_bloc.dart';

const _defaultLink = 'https://sign.signillion.site/documents/sign_document/397e0317-b687-4d3c-b8c1-6da1fe8c9e97/?mobile=true';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState.initial({
    @Default(_defaultLink) String link,
  }) = _Initial;
  
  const factory WebViewState.checked({
    @Default('$_defaultLink&checked=true') String link,
  }) = _Checked;
}

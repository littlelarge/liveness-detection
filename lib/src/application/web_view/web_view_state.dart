part of 'web_view_bloc.dart';

const _defaultLink =
    'https://sign.signillion.site/documents/sign_document/ae447b66-bb23-46bc-88f4-dface279b0f5/?mobile=true';

@freezed
class WebViewState with _$WebViewState {
  const factory WebViewState.initial({
    @Default(_defaultLink) String link,
  }) = _Initial;

  const factory WebViewState.checked({
    @Default('$_defaultLink&checked=true') String link,
  }) = _Checked;
}

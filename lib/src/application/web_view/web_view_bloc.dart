import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/infrastructure/core/url_names.dart';

part 'web_view_event.dart';
part 'web_view_state.dart';
part 'web_view_bloc.freezed.dart';

@lazySingleton
class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  WebViewBloc(
    @Named(UrlNames.defaultLink) this.defaultLink,
    @Named(UrlNames.checkedLink) this.checkedLink,
  ) : super(WebViewState.initial(link: defaultLink)) {
    on<WebViewEvent>(
      (event, emit) {
        event.map(
          indentificationPassed: (e) {
            emit(WebViewState.checked(link: checkedLink));
          },
        );
      },
    );
  }

  final String defaultLink;
  final String checkedLink;
}

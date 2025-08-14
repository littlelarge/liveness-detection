import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/src/infrastructure/core/url_names.dart';

part 'web_view_event.dart';
part 'web_view_state.dart';
part 'web_view_bloc.freezed.dart';

@injectable
class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  WebViewBloc(
    @Named(UrlNames.defaultLink) this.defaultLink,
  ) : super(WebViewState.initial(
          link: defaultLink,
          currentDocumentLink: '',
        )) {
    on<WebViewEvent>(
      (event, emit) {
        event.map(
          currentDocumentLinkInitialized: (e) {
            emit(
              state.copyWith(
                currentDocumentLink: e.link,
              ),
            );
          },
          indentificationPassed: (e) {
            emit(
              WebViewState.checked(
                link: '${state.currentDocumentLink}&checked=true',
                currentDocumentLink: state.currentDocumentLink,
              ),
            );
          },
        );
      },
    );
  }

  final String defaultLink;
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'web_view_event.dart';
part 'web_view_state.dart';
part 'web_view_bloc.freezed.dart';

@lazySingleton
class WebViewBloc extends Bloc<WebViewEvent, WebViewState> {
  
  WebViewBloc() : super(const WebViewState.initial()) {
    on<WebViewEvent>(
      (event, emit) {
        event.map(
          indentificationPassed: (e) {
            emit(const WebViewState.checked());
          },
        );
      },
    );
  }
}

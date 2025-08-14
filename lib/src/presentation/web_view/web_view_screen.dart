import 'dart:convert';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/application/web_view/web_view_bloc.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/common/storage_keys.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_scaffold.dart';
import 'package:liveness_detection/src/presentation/passport/cheburashka_photo/cheburashka_photo_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends HookWidget {
  const WebViewScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final webViewController = useMemoized(() => WebViewController(), []);
    final hasNavigated = useRef(false);
    final isLoading = useState(true);

    // future вычисляем 1 раз при монтировании
    final loadFuture = useMemoized(() async {
      final token = await getIt<FlutterSecureStorage>().read(
        key: StorageKeys.authorizationToken,
      );
      if (!context.mounted) return;
      
      final webViewBloc = context.read<WebViewBloc>();
      await webViewController.loadRequest(
        Uri.parse(webViewBloc.state.link),
        headers: {'Authorization': token!},
      );
    }, []);

    useEffect(() {
      webViewController
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageStarted: (String url) {
              isLoading.value = true;
            },
            onPageFinished: (String url) async {
              isLoading.value = false;
              await webViewController.runJavaScript('''
              const btn = document.querySelector('.btn-primary');
              if (btn) {
                btn.addEventListener('click', function() {
                  window.flutter_injected.postMessage('btn-primary-clicked');
                });
              }
            ''');
            },
            onUrlChange: (change) async {
              final url = change.url ?? '';

              Utils.liveness_detectionLog(
                url,
                extraTag: 'web-view-current-url',
              );

              if (url.contains('sign_document')) {
                context.read<WebViewBloc>().add(
                      WebViewEvent.currentDocumentLinkInitialized(
                        link: url,
                      ),
                    );
              }
            },
          ),
        )
        ..addJavaScriptChannel(
          'flutter_injected',
          onMessageReceived: (JavaScriptMessage message) {
            if (!hasNavigated.value &&
                (message.message == 'text-found' ||
                    message.message == 'btn-primary-clicked')) {
              hasNavigated.value = true;
              AppNavigator.push(
                context,
                const CheburashkaPhotoScreen(),
              );
            }
          },
        );

      bool backInterceptor(bool stopDefaultButtonEvent, RouteInfo info) {
        () async {
          final canGoBack = await webViewController.canGoBack();
          if (!context.mounted) return;
          if (canGoBack) {
            await webViewController.goBack();
          } else {
            Navigator.of(context, rootNavigator: true).pop();
          }
        }();
        return true;
      }

      BackButtonInterceptor.add(backInterceptor);
      return () => BackButtonInterceptor.remove(backInterceptor);
    }, []);

    return FutureBuilder<void>(
      future: loadFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CustomScaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  WebViewWidget(controller: webViewController),
                  if (isLoading.value)
                    Positioned.fill(
                      child: AbsorbPointer(
                        absorbing: true,
                        child: Container(
                          color: Colors.black.withAlpha(
                            20,
                          ),
                        ),
                      ),
                    ),
                  if (isLoading.value)
                    Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ),
                    ),
                ],
              ),
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

import 'dart:convert';

import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/application/web_view/web_view_bloc.dart';
import 'package:liveness_detection/src/common/di/injection.dart';
import 'package:liveness_detection/src/common/storage_keys.dart';
import 'package:liveness_detection/src/presentation/core/router/app_router.dart';
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

    String decodeWebViewHtml(Object rawHtml) {
      var raw = rawHtml.toString().trim();

      // Убираем внешние кавычки, если они есть
      if (raw.startsWith('"') && raw.endsWith('"')) {
        raw = raw.substring(1, raw.length - 1);
      }

      // Декодируем JSON-эскейп-последовательности (\u003C, \n и т.д.)
      return jsonDecode('"$raw"').toString();
    }

    useEffect(() {
      // getToken() async {
      //   final storage = getIt<FlutterSecureStorage>();

      //   _token = await getIt<FlutterSecureStorage>().read(
      //         key: StorageKeys.authorizationToken,
      //       ) ??
      //       '';
      // }

      // getToken();

      webViewController
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) async {
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
              Utils.liveness_detectionLog(
                change.url,
                extraTag: 'web-view-current-url',
              );

              final rawHtml =
                  await webViewController.runJavaScriptReturningResult(
                "window.document.documentElement.outerHTML;",
              );

              final cleanHtml = decodeWebViewHtml(rawHtml);

              Utils.liveness_detectionLog(
                cleanHtml,
                extraTag: 'web-view-html',
              );
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

      return () {
        BackButtonInterceptor.remove(backInterceptor);
      };
    }, []);

    return FutureBuilder(
      future: getIt<FlutterSecureStorage>()
          .read(
        key: StorageKeys.authorizationToken,
      )
          .then(
        (value) async {
          final webViewBloc = getIt<WebViewBloc>();

          await webViewController.loadRequest(
            Uri.parse(webViewBloc.state.link),
            headers: {'Authorization': value!},
          );
        },
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CustomScaffold(
            body: SafeArea(
              child: WebViewWidget(
                controller: webViewController,
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

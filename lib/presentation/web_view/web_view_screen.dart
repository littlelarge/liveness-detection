import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:liveness_detection/presentation/routes/mobile_auto_router.gr.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewScreen extends HookWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final webViewController = useMemoized(
      () => WebViewController(),
      [],
    );
    // Флаг для предотвращения повторных переходов
    final hasNavigated = useRef(false);

    useEffect(
      () {
        webViewController
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..setNavigationDelegate(
            NavigationDelegate(
              onProgress: (int progress) {},
              onPageStarted: (String url) {},
              onPageFinished: (String url) async {
                await webViewController.runJavaScript('''
                  let intervalId = null;
                  function checkText() {
                    if (document.body.innerText.includes('You can add only')) {
                      window.flutter_injected.postMessage('text-found');
                      clearInterval(intervalId); // Останавливаем интервал
                    }
                  }
                  intervalId = setInterval(checkText, 500);
                ''');
              },
              onHttpError: (HttpResponseError error) {},
              onWebResourceError: (WebResourceError error) {},
            ),
          )
          ..addJavaScriptChannel(
            'flutter_injected',
            onMessageReceived: (JavaScriptMessage message) {
              if (message.message == 'text-found' && !hasNavigated.value) {
                hasNavigated.value = true; // Устанавливаем флаг
                context.pushRoute(const LivenessDetectionRoute());
              }
            },
          )
          ..loadRequest(
            Uri.parse(
              'https://sign.signillion.site/documents/sign_document/8da0f0e1-83cf-41d2-8d78-235951b1dc71/?mobile=true',
            ),
          );
        return () {};
      },
      [],
    );

    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController,
        ),
      ),
    );
  }
}
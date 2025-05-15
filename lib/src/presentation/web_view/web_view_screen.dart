import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:liveness_detection/src/presentation/core/router/app_router.dart';
import 'package:liveness_detection/src/presentation/core/widgets/custom_scaffold.dart';
import 'package:liveness_detection/src/presentation/passport/cheburashka_photo/cheburashka_photo_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends HookWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final webViewController = useMemoized(
      () => WebViewController(),
      [],
    );
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
                    if (document.body.innerText.includes('Signillion')) {
                      window.flutter_injected.postMessage('text-found');
                      clearInterval(intervalId);
                    }
                  }
                  intervalId = setInterval(checkText, 100);
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
                hasNavigated.value = true;

                AppNavigator.push(
                  context,
                  const CheburashkaPhotoScreen(),
                );
              }
            },
          )
          ..loadRequest(
            Uri.parse(
              'https://sign.signillion.site/documents/sign_document/397e0317-b687-4d3c-b8c1-6da1fe8c9e97/?mobile=true',
            ),
          );
        return () {};
      },
      [],
    );

    return CustomScaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: webViewController,
        ),
      ),
    );
  }
}

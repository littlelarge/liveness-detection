import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:liveness_detection/common/utils.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class WebViewScreen extends HookWidget {
  const WebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final webViewController = useMemoized(
      () => WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {},
            onPageStarted: (String url) {},
            onPageFinished: (String url) {},
            onHttpError: (HttpResponseError error) {
              Utils.showSnackBar(context: context, text: 'Ошибка валидации');
            },
            onWebResourceError: (WebResourceError error) {
              Utils.showSnackBar(context: context, text: 'Ошибка валидации');
            },
          ),
        )
        ..loadRequest(Uri.parse(
            'https://sign.signillion.site/documents/sign_document/13b522c6-f45c-428e-b9f2-c283cf3c8734/?mobile=true')),
      [],
    );

    return WebViewWidget(
      controller: webViewController,
    );
  }
}

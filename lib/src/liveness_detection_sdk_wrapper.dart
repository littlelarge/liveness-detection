import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';
import 'package:liveness_detection/src/presentation/liveness_detection/liveness_detection_wrapper.dart';

class LivenessDetectionSdk extends StatefulWidget {
  /// In url enter your domain in the format your.domain.com
  const LivenessDetectionSdk({
    required this.url,
    required this.authorizationToken,
    super.key,
  });

  final String url;
  final String authorizationToken;

  @override
  State<LivenessDetectionSdk> createState() => _LivenessDetectionSdkState();
}

class _LivenessDetectionSdkState extends State<LivenessDetectionSdk> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (widget.url.isNotEmpty && widget.authorizationToken.isNotEmpty) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => LivenessDetectionWrapper(
                url: widget.url,
                authorizationToken: widget.authorizationToken,
              ),
            ),
          );
        } else {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const EnterUrlAndTokenScreen(),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

const livenessLocalizationDelegates = [
  LivenessLocalizations.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
];

import 'package:flutter/material.dart';
import 'package:liveness_detection/liveness_detection_sdk.dart';

class LivenessDetectionScreen extends StatelessWidget {
  const LivenessDetectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return LivenessDetectionSdk(
      url: 'sign.signillion.site',
      authorizationToken: 'Bearer 111111',
    );
  }
}

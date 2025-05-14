import 'package:flutter/material.dart';
import 'package:liveness_detection/src/presentation/core/core.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    super.key,
    this.body,
    this.appBar,
    this.floatingActionButtonLocation,
    this.floatingActionButton,
  });

  final Widget? body;
  final PreferredSizeWidget? appBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar,
      body: body,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButton: floatingActionButton,
    );
  }
}

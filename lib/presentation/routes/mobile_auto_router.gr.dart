// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:liveness_detection/presentation/liveness_detection/liveness_detection_screen.dart'
    as _i2;
import 'package:liveness_detection/presentation/passport/camera/camera_overlay_screen.dart'
    as _i1;
import 'package:liveness_detection/presentation/passport/passport_form_screen.dart'
    as _i3;
import 'package:liveness_detection/presentation/web_view/web_view.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CameraOverlayRoute.name: (routeData) {
      final args = routeData.argsAs<CameraOverlayRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CameraOverlayScreen(
          key: args.key,
          side: args.side,
        ),
      );
    },
    LivenessDetectionRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LivenessDetectionScreen(),
      );
    },
    PassportFormRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PassportFormScreen(),
      );
    },
    WebViewRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WebViewScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CameraOverlayScreen]
class CameraOverlayRoute extends _i5.PageRouteInfo<CameraOverlayRouteArgs> {
  CameraOverlayRoute({
    _i6.Key? key,
    required _i1.PassportSide side,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          CameraOverlayRoute.name,
          args: CameraOverlayRouteArgs(
            key: key,
            side: side,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraOverlayRoute';

  static const _i5.PageInfo<CameraOverlayRouteArgs> page =
      _i5.PageInfo<CameraOverlayRouteArgs>(name);
}

class CameraOverlayRouteArgs {
  const CameraOverlayRouteArgs({
    this.key,
    required this.side,
  });

  final _i6.Key? key;

  final _i1.PassportSide side;

  @override
  String toString() {
    return 'CameraOverlayRouteArgs{key: $key, side: $side}';
  }
}

/// generated route for
/// [_i2.LivenessDetectionScreen]
class LivenessDetectionRoute extends _i5.PageRouteInfo<void> {
  const LivenessDetectionRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LivenessDetectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'LivenessDetectionRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PassportFormScreen]
class PassportFormRoute extends _i5.PageRouteInfo<void> {
  const PassportFormRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PassportFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'PassportFormRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WebViewScreen]
class WebViewRoute extends _i5.PageRouteInfo<void> {
  const WebViewRoute({List<_i5.PageRouteInfo>? children})
      : super(
          WebViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'WebViewRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

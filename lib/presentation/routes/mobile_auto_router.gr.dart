// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:liveness_detection/presentation/liveness_detection/liveness_detection_screen.dart'
    as _i2;
import 'package:liveness_detection/presentation/passport/camera/camera_overlay_screen.dart'
    as _i1;
import 'package:liveness_detection/presentation/passport/passport_form_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CameraOverlayRoute.name: (routeData) {
      final args = routeData.argsAs<CameraOverlayRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CameraOverlayScreen(
          key: args.key,
          side: args.side,
        ),
      );
    },
    LivenessDetectionRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LivenessDetectionScreen(),
      );
    },
    PassportFormRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PassportFormScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CameraOverlayScreen]
class CameraOverlayRoute extends _i4.PageRouteInfo<CameraOverlayRouteArgs> {
  CameraOverlayRoute({
    _i5.Key? key,
    required _i1.PassportSide side,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          CameraOverlayRoute.name,
          args: CameraOverlayRouteArgs(
            key: key,
            side: side,
          ),
          initialChildren: children,
        );

  static const String name = 'CameraOverlayRoute';

  static const _i4.PageInfo<CameraOverlayRouteArgs> page =
      _i4.PageInfo<CameraOverlayRouteArgs>(name);
}

class CameraOverlayRouteArgs {
  const CameraOverlayRouteArgs({
    this.key,
    required this.side,
  });

  final _i5.Key? key;

  final _i1.PassportSide side;

  @override
  String toString() {
    return 'CameraOverlayRouteArgs{key: $key, side: $side}';
  }
}

/// generated route for
/// [_i2.LivenessDetectionScreen]
class LivenessDetectionRoute extends _i4.PageRouteInfo<void> {
  const LivenessDetectionRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LivenessDetectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'LivenessDetectionRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PassportFormScreen]
class PassportFormRoute extends _i4.PageRouteInfo<void> {
  const PassportFormRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PassportFormRoute.name,
          initialChildren: children,
        );

  static const String name = 'PassportFormRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

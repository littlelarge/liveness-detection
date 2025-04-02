import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:liveness_detection/presentation/routes/mobile_auto_router.gr.dart';

@AutoRouterConfig()
@Singleton()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LivenessDetectionRoute.page,
          initial: true,
        ),
        AutoRoute(page: CameraOverlayRoute.page),
        AutoRoute(page: PassportFormRoute.page),
      ];
}

import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: MainRoute.page,
          initial: true,
          path: '/home',
          children: [
            AdaptiveRoute(
              page: HomeNavigationRoute.page,
              children: [
                AdaptiveRoute(
                  page: HomeRoute.page,
                  initial: true,
                ),
                AdaptiveRoute(
                  page: ProductDetailsRoute.page,
                  path: ':productId',
                ),
              ],
            ),
            AdaptiveRoute(
              page: FavoritesRoute.page,
              path: 'favorites',
            ),
            AdaptiveRoute(
              page: NotificationsRoute.page,
              path: 'notifications',
            ),
            AdaptiveRoute(
              page: ProfileRoute.page,
              path: 'profile',
            ),
          ],
        ),
        AdaptiveRoute(
          page: CartRoute.page,
          path: '/cart',
        ),
      ];
}

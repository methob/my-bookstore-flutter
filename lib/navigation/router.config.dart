import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class HomeScreenNavigation extends StatelessWidget {
  const HomeScreenNavigation({super.key});
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@AutoRouterConfig()
class BookStoreRouter extends $BookStoreRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: WelcomeRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(
          page: HomeRoute.page,
          children: [
            AutoRoute(page: HomeRouteNavigation.page, children: [
              AutoRoute(page: HomeContentRouter.page),
              AutoRoute(page: DetailBookRoute.page),
            ]),
            AutoRoute(page: CategoriesRoute.page),
          ],
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
        transitionsBuilder: TransitionsBuilders.fadeIn,
      );
}

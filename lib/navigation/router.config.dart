
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';

@AutoRouterConfig()
class BookStoreRouter extends $BookStoreRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path : "/welcome", page: WelcomeRoute.page, initial: true),
    AutoRoute(path : "/login", page: LoginRoute.page),
    AutoRoute(path : "/signup", page: SignUpRoute.page),
    AutoRoute(page: "/home", page: HomeRoute.page)
  ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
    transitionsBuilder: TransitionsBuilders.fadeIn,
  );
}

import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/ui/screen/login/sign_up.dart';

@AutoRouterConfig()
class BookStoreRouter extends $BookStoreRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(path : "/", page: LoginRoute.page, initial: true),
    AutoRoute(path : "/signup", page: SignUpRoute.page)
  ];

  @override
  RouteType get defaultRouteType => const RouteType.custom(
    transitionsBuilder: TransitionsBuilders.fadeIn,
  );
}
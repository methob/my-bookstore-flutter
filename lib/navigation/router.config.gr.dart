// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:bookstore_thais/model/vo/home_item_vo.dart' as _i14;
import 'package:bookstore_thais/navigation/router.config.dart' as _i3;
import 'package:bookstore_thais/ui/screen/account/accountScreen.dart' as _i1;
import 'package:bookstore_thais/ui/screen/cart/CartScreen.dart' as _i2;
import 'package:bookstore_thais/ui/screen/cart/CheckoutScreen.dart' as _i5;
import 'package:bookstore_thais/ui/screen/categories/categories.dart' as _i4;
import 'package:bookstore_thais/ui/screen/detail/detail.dart' as _i6;
import 'package:bookstore_thais/ui/screen/home/home.dart' as _i8;
import 'package:bookstore_thais/ui/screen/home/home_content.dart' as _i7;
import 'package:bookstore_thais/ui/screen/login/login.dart' as _i9;
import 'package:bookstore_thais/ui/screen/login/sign_up.dart' as _i10;
import 'package:bookstore_thais/ui/screen/login/welcome.dart' as _i11;
import 'package:flutter/material.dart' as _i13;

abstract class $BookStoreRouter extends _i12.RootStackRouter {
  $BookStoreRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    Accountscreen.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Accountscreen(),
      );
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.CartScreen(key: args.key),
      );
    },
    CartRouteNavigation.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CartScreenNavigation(),
      );
    },
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>(
          orElse: () => const CategoriesRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CategoriesScreen(key: args.key),
      );
    },
    Checkoutscreen.name: (routeData) {
      final args = routeData.argsAs<CheckoutscreenArgs>(
          orElse: () => const CheckoutscreenArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.Checkoutscreen(key: args.key),
      );
    },
    DetailBookRoute.name: (routeData) {
      final args = routeData.argsAs<DetailBookRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DetailScreen(
          key: args.key,
          book: args.book,
        ),
      );
    },
    HomeContentRouter.name: (routeData) {
      final args = routeData.argsAs<HomeContentRouterArgs>(
          orElse: () => const HomeContentRouterArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.HomeContent(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.HomeScreen(key: args.key),
      );
    },
    HomeRouteNavigation.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreenNavigation(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LoginScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SignUpScreen(key: args.key),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.Accountscreen]
class Accountscreen extends _i12.PageRouteInfo<void> {
  const Accountscreen({List<_i12.PageRouteInfo>? children})
      : super(
          Accountscreen.name,
          initialChildren: children,
        );

  static const String name = 'Accountscreen';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartScreen]
class CartRoute extends _i12.PageRouteInfo<CartRouteArgs> {
  CartRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CartRoute.name,
          args: CartRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i12.PageInfo<CartRouteArgs> page =
      _i12.PageInfo<CartRouteArgs>(name);
}

class CartRouteArgs {
  const CartRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.CartScreenNavigation]
class CartRouteNavigation extends _i12.PageRouteInfo<void> {
  const CartRouteNavigation({List<_i12.PageRouteInfo>? children})
      : super(
          CartRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'CartRouteNavigation';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CategoriesScreen]
class CategoriesRoute extends _i12.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i12.PageInfo<CategoriesRouteArgs> page =
      _i12.PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.Checkoutscreen]
class Checkoutscreen extends _i12.PageRouteInfo<CheckoutscreenArgs> {
  Checkoutscreen({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          Checkoutscreen.name,
          args: CheckoutscreenArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Checkoutscreen';

  static const _i12.PageInfo<CheckoutscreenArgs> page =
      _i12.PageInfo<CheckoutscreenArgs>(name);
}

class CheckoutscreenArgs {
  const CheckoutscreenArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'CheckoutscreenArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.DetailScreen]
class DetailBookRoute extends _i12.PageRouteInfo<DetailBookRouteArgs> {
  DetailBookRoute({
    _i13.Key? key,
    required _i14.HomeBookVO? book,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          DetailBookRoute.name,
          args: DetailBookRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailBookRoute';

  static const _i12.PageInfo<DetailBookRouteArgs> page =
      _i12.PageInfo<DetailBookRouteArgs>(name);
}

class DetailBookRouteArgs {
  const DetailBookRouteArgs({
    this.key,
    required this.book,
  });

  final _i13.Key? key;

  final _i14.HomeBookVO? book;

  @override
  String toString() {
    return 'DetailBookRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i7.HomeContent]
class HomeContentRouter extends _i12.PageRouteInfo<HomeContentRouterArgs> {
  HomeContentRouter({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeContentRouter.name,
          args: HomeContentRouterArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeContentRouter';

  static const _i12.PageInfo<HomeContentRouterArgs> page =
      _i12.PageInfo<HomeContentRouterArgs>(name);
}

class HomeContentRouterArgs {
  const HomeContentRouterArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomeContentRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<HomeRouteArgs> page =
      _i12.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.HomeScreenNavigation]
class HomeRouteNavigation extends _i12.PageRouteInfo<void> {
  const HomeRouteNavigation({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteNavigation';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignUpScreen]
class SignUpRoute extends _i12.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i13.Key? key,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i12.PageInfo<SignUpRouteArgs> page =
      _i12.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.WelcomeScreen]
class WelcomeRoute extends _i12.PageRouteInfo<void> {
  const WelcomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:bookstore_thais/ui/screen/categories/categories.dart' as _i1;
import 'package:bookstore_thais/ui/screen/categories/detail.dart' as _i2;
import 'package:bookstore_thais/ui/screen/home/home.dart' as _i4;
import 'package:bookstore_thais/ui/screen/home/home_content.dart' as _i3;
import 'package:bookstore_thais/ui/screen/login/login.dart' as _i5;
import 'package:bookstore_thais/ui/screen/login/sign_up.dart' as _i6;
import 'package:bookstore_thais/ui/screen/login/welcome.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $BookStoreRouter extends _i8.RootStackRouter {
  $BookStoreRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>(
          orElse: () => const CategoriesRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CategoriesScreen(key: args.key),
      );
    },
    DetailBookRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DetailScreen(),
      );
    },
    HomeContentRouter.name: (routeData) {
      final args = routeData.argsAs<HomeContentRouterArgs>(
          orElse: () => const HomeContentRouterArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeContent(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeScreen(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.SignUpScreen(key: args.key),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesScreen]
class CategoriesRoute extends _i8.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i8.PageInfo<CategoriesRouteArgs> page =
      _i8.PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DetailScreen]
class DetailBookRoute extends _i8.PageRouteInfo<void> {
  const DetailBookRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DetailBookRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailBookRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeContent]
class HomeContentRouter extends _i8.PageRouteInfo<HomeContentRouterArgs> {
  HomeContentRouter({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          HomeContentRouter.name,
          args: HomeContentRouterArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeContentRouter';

  static const _i8.PageInfo<HomeContentRouterArgs> page =
      _i8.PageInfo<HomeContentRouterArgs>(name);
}

class HomeContentRouterArgs {
  const HomeContentRouterArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'HomeContentRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<HomeRouteArgs> page =
      _i8.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignUpScreen]
class SignUpRoute extends _i8.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i8.PageInfo<SignUpRouteArgs> page =
      _i8.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.WelcomeScreen]
class WelcomeRoute extends _i8.PageRouteInfo<void> {
  const WelcomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

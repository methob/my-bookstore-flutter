// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:bookstore_thais/model/vo/home_item_vo.dart' as _i11;
import 'package:bookstore_thais/navigation/router.config.dart' as _i5;
import 'package:bookstore_thais/ui/screen/categories/categories.dart' as _i1;
import 'package:bookstore_thais/ui/screen/detail/detail.dart' as _i2;
import 'package:bookstore_thais/ui/screen/home/home.dart' as _i4;
import 'package:bookstore_thais/ui/screen/home/home_content.dart' as _i3;
import 'package:bookstore_thais/ui/screen/login/login.dart' as _i6;
import 'package:bookstore_thais/ui/screen/login/sign_up.dart' as _i7;
import 'package:bookstore_thais/ui/screen/login/welcome.dart' as _i8;
import 'package:flutter/material.dart' as _i10;

abstract class $BookStoreRouter extends _i9.RootStackRouter {
  $BookStoreRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>(
          orElse: () => const CategoriesRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.CategoriesScreen(key: args.key),
      );
    },
    DetailBookRoute.name: (routeData) {
      final args = routeData.argsAs<DetailBookRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailScreen(
          key: args.key,
          book: args.book,
        ),
      );
    },
    HomeContentRouter.name: (routeData) {
      final args = routeData.argsAs<HomeContentRouterArgs>(
          orElse: () => const HomeContentRouterArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeContent(key: args.key),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeScreen(key: args.key),
      );
    },
    HomeRouteNavigation.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomeScreenNavigation(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SignUpScreen(key: args.key),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesScreen]
class CategoriesRoute extends _i9.PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          CategoriesRoute.name,
          args: CategoriesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static const _i9.PageInfo<CategoriesRouteArgs> page =
      _i9.PageInfo<CategoriesRouteArgs>(name);
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.DetailScreen]
class DetailBookRoute extends _i9.PageRouteInfo<DetailBookRouteArgs> {
  DetailBookRoute({
    _i10.Key? key,
    required _i11.HomeBookVO? book,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailBookRoute.name,
          args: DetailBookRouteArgs(
            key: key,
            book: book,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailBookRoute';

  static const _i9.PageInfo<DetailBookRouteArgs> page =
      _i9.PageInfo<DetailBookRouteArgs>(name);
}

class DetailBookRouteArgs {
  const DetailBookRouteArgs({
    this.key,
    required this.book,
  });

  final _i10.Key? key;

  final _i11.HomeBookVO? book;

  @override
  String toString() {
    return 'DetailBookRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [_i3.HomeContent]
class HomeContentRouter extends _i9.PageRouteInfo<HomeContentRouterArgs> {
  HomeContentRouter({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeContentRouter.name,
          args: HomeContentRouterArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeContentRouter';

  static const _i9.PageInfo<HomeContentRouterArgs> page =
      _i9.PageInfo<HomeContentRouterArgs>(name);
}

class HomeContentRouterArgs {
  const HomeContentRouterArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'HomeContentRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<HomeRouteArgs> page =
      _i9.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.HomeScreenNavigation]
class HomeRouteNavigation extends _i9.PageRouteInfo<void> {
  const HomeRouteNavigation({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRouteNavigation.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouteNavigation';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginScreen]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignUpScreen]
class SignUpRoute extends _i9.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i9.PageInfo<SignUpRouteArgs> page =
      _i9.PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.WelcomeScreen]
class WelcomeRoute extends _i9.PageRouteInfo<void> {
  const WelcomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

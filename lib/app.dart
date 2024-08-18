
import 'dart:ui';

import 'package:bookstore_thais/theme/themes.dart';
import 'package:flutter/material.dart';
import 'navigation/router.config.dart';

class BookstoreApp extends StatelessWidget {

  final BookStoreRouter router = BookStoreRouter();

  BookstoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      title: "Book store thais",
      routerConfig: router.config(),
      scrollBehavior: AppScrollBehavior(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.trackpad,
  };
}
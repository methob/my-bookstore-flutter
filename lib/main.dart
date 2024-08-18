import 'package:bookstore_thais/app.dart';
import 'package:flutter/material.dart';

import 'di/di.config.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(
    GlobalBlocProviders(
        child: BookstoreApp()
    )
  );
}


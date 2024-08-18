import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../theme/colors.dart';

class ActionBarBookstore extends StatelessWidget {

  String titleActionBar;
  Widget bodyScreen;

  ActionBarBookstore({super.key, required this.titleActionBar, required this.bodyScreen});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              leading: BackButton(
                color: Colors.black,
                onPressed: () {
                  context.router.maybePop();
                },
              ),
              title: Text(
                titleActionBar ,
                style: const TextStyle(
                    color: AppColors.simpleBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              centerTitle: true,
            ),
            body: bodyScreen));
  }
}

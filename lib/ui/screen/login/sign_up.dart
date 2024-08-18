
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import '../../../theme/colors.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
      backgroundColor: AppColors.primary,
      leading: BackButton(
        color: Colors.black,
        onPressed: () {
          // TODO REALIZAR AÇÃO
        },
      ),
      title: const Text(
        "Get Started",
        style: TextStyle(
            color: AppColors.simpleBlack,
            fontWeight: FontWeight.bold,
            fontSize: 24.0),
      ),
      centerTitle: true,
    ),
    body: Text('');
  }
}
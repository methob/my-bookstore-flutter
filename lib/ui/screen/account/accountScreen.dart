import 'package:auto_route/annotations.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Accountscreen extends StatelessWidget {
  const Accountscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("Account", style: TextStyle(
            fontSize: 16,
            color: AppColors.simpleBlack,
            fontWeight: FontWeight.w600
          ),),
        ),
      ),
    );
  }
}

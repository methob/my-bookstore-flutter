import 'package:auto_route/annotations.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class homeScreen extends StatelessWidget {

  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.search))
          ],
          title: const Text(
            "Happy Reading!",
            style: TextStyle(
                color: AppColors.btnColors,
                fontSize: 16.0
            ),
          ),
        ),
        body: Text("SJAISJAsa"),
      ),
    )
  }
}
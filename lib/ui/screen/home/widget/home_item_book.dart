
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeItemBook extends StatelessWidget {

  final String? image;
  final String? category;
  final String? title;
  final String? author;
  final String? value;

  const HomeItemBook({super.key, this.image, this.category, this.title, this.author, this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Column(
          children: [
            Image.network(
              height: 140,
              width: MediaQuery.of(context).size.width,
             image ?? "",
              fit: BoxFit.cover,
            ),
            Container(
              color: AppColors.btnColors,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Text(
                      category ?? "",
                      style: const TextStyle(
                        color: AppColors.textFieldColors,
                        fontSize: 10.85,
                      ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

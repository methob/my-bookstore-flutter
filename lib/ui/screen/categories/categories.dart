
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {

  CategoriesScreen({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
          padding: const EdgeInsets.only(top: 32),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 56,
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search
                      ),
                      filled: true,
                      fillColor: AppColors.textFieldColors,
                      hintStyle: const TextStyle(fontSize: 12, color: AppColors.simpleBlack),
                      hintText: "Search title/author/ISBN no",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                width: 52,
                height: 56,
                decoration: BoxDecoration(
                  color: AppColors.textFieldColors,
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(Icons.filter_alt_rounded)
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

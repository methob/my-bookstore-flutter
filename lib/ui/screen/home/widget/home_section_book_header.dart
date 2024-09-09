
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeSectionBookHeader extends StatelessWidget {

  final String? title;
  final bool? showSeeMore;
  final bool? showFilter;

  int selectedItem = 0;

  HomeSectionBookHeader({
    super.key,
    this.title,
    this.showSeeMore,
    this.showFilter
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
                title ?? "",
                style: const TextStyle(
                  color: AppColors.btnColors,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
            ),
            Visibility(
              visible: showSeeMore ?? true,
              child: Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {

                    },
                    child: const Text(
                      "see more",
                      style: TextStyle(
                          fontSize: 14,
                          color: AppColors.btnColors
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Visibility(
            visible: showFilter ?? false,
            child: const SizedBox(height: 8)
        ),
        Visibility(
          visible: showFilter ?? false,
          child: Row(
            children: [
              HomeFilterButton(
                title: "This Week",
                isSelected: selectedItem == 0,
              ),
              const SizedBox(width: 16),
              HomeFilterButton(
                title: "This Month",
                isSelected: selectedItem == 1,
              ),
              const SizedBox(width: 16),
              HomeFilterButton(
                title: "This Year",
                isSelected: selectedItem == 2,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class HomeFilterButton extends StatelessWidget {

  final bool isSelected;
  final String title;

  const HomeFilterButton({super.key, required this.isSelected, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {

        },
        style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? AppColors.fullBlack : Colors.transparent.withOpacity(0),
            shadowColor: Colors.transparent.withOpacity(0),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6), // Define o padding interno
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)),
            side: const BorderSide(
                color: AppColors.defaultBlack,
                width: 1
            ),
          minimumSize: const Size(86,32)
        ),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 14,
              color: isSelected ? AppColors.primary : AppColors.defaultBlack,
              fontWeight: FontWeight.w600,
          ),
        )
    );
  }
}
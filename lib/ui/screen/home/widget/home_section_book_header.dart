
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/bloc/home/home_top_book_filter_bloc.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeSectionBookHeader extends StatelessWidget {

  final String? title;
  final bool? showSeeMore;
  final bool? showFilter;
  final HomeBookState selectedItem;

  const HomeSectionBookHeader({
    super.key,
    this.title,
    this.showSeeMore,
    this.showFilter,
    required this.selectedItem
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50),
      child: Column(
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
                    child: GestureDetector(
                      onTap: () {
                        // context.router.push(const DetailBookRoute());
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
                  isSelected: selectedItem == HomeBookState.week,
                  onClick: () => {
                    context.read<HomeTopBookFilterBloc>().add(HomeBookEvent.filterByWeek)
                  },
                ),
                const SizedBox(width: 16),
                HomeFilterButton(
                  title: "This Month",
                  isSelected: selectedItem == HomeBookState.month,
                  onClick: () => {
                    context.read<HomeTopBookFilterBloc>().add(HomeBookEvent.filterByMonth)
                  },
                ),
                const SizedBox(width: 16),
                HomeFilterButton(
                  title: "This Year",
                  isSelected: selectedItem == HomeBookState.year,
                  onClick: () => {
                    context.read<HomeTopBookFilterBloc>().add(HomeBookEvent.filterByYear)
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeFilterButton extends StatelessWidget {

  final bool isSelected;
  final String title;
  final Function onClick;

  const HomeFilterButton({super.key, required this.isSelected, required this.title, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onClick(),
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
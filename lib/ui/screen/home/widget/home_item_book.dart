
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../model/home_book_item.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';

class HomeItemBook extends StatelessWidget {

  final HomeBook? item;

  const HomeItemBook({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Navegando detalhe");
        // context.read<HomeBottomSelectorBloc>().add(HomeBottomSelectorEvent(homeScreen: HomeScreenEnum.detail));
        // AutoTabsRouter.of(context).navigate(DetailRoute());
        // AutoRouter.of(context).push(DetailBookRoute());
        context.router.push(DetailBookRoute());
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: SizedBox(
          width: 180,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Column(
              children: [
                Image.network(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                 item?.image ?? "",
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Container(
                    color: AppColors.btnColors,
                    width:  MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 12),
                          Text(
                              item?.type ?? "",
                              style: const TextStyle(
                                color: AppColors.textFieldColors,
                                fontSize: 10.85,
                              ),
                          ),
                          Text(
                            item?.title ?? "",
                            style: const TextStyle(
                              color: AppColors.textFieldColors,
                              fontSize: 15.39,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            item?.author ?? "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10.99,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            item?.value ?? "",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 21.98,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

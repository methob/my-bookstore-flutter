import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/model/vo/home_item_vo.dart';
import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

@RoutePage(name: "DetailBookRoute")
class DetailScreen extends StatelessWidget {
  HomeBookVO? book;

  DetailScreen({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            book?.category ?? "",
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.btnColors),
          )),
          actions: [
            IconButton(
                onPressed: () {
                  AutoTabsRouter.of(context).setActiveIndex(2);
                },
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book?.title ?? "",
                style: const TextStyle(
                    color: AppColors.btnColors,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                height: 214,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        height: MediaQuery.of(context).size.height,
                        width: 138,
                        book?.image ?? "",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    const SizedBox(width: 22),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              // create components to this
                              text: TextSpan(children: [
                            const TextSpan(
                                text: 'Author: ',
                                style:
                                    TextStyle(color: AppColors.defaultBlack)),
                            TextSpan(
                                text: book?.author ?? "",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.defaultBlack,
                                ))
                          ])),
                          const SizedBox(height: 8),
                          RichText(
                              // create components to this
                              text: TextSpan(children: [
                            const TextSpan(
                                text: 'Category: ',
                                style:
                                    TextStyle(color: AppColors.defaultBlack)),
                            TextSpan(
                                text: book?.category ?? "",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.defaultBlack,
                                ))
                          ])),
                          const SizedBox(height: 8),
                          RichText(
                              // create components to this
                              text: const TextSpan(children: [
                            TextSpan(
                                text: 'Rating: ',
                                style:
                                    TextStyle(color: AppColors.defaultBlack)),
                            TextSpan(
                                text: "4.11/5",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.defaultBlack,
                                ))
                          ])),
                          const SizedBox(height: 13),
                          RichText(
                              // create components to this
                              text: TextSpan(children: [
                            const WidgetSpan(
                                child: Text('Pricing: ',
                                    style: TextStyle(
                                        color: AppColors.defaultBlack,
                                        fontSize: 14))),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.baseline,
                                baseline: TextBaseline.alphabetic,
                                child: Text("\$${book?.value ?? ""}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.defaultBlack,
                                    )))
                          ])),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              AutoTabsRouter.of(context).setActiveIndex(2);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.btnColors,
                                minimumSize: Size(double.infinity, 40),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4))),
                            child: const Text(
                              'Add to Cart',
                              style: TextStyle(color: AppColors.primary),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 17),
              const Text(
                "Description:",
                style: TextStyle(
                    color: AppColors.btnColors,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0),
              ),
              const SizedBox(height: 12),
              const Text(
                "DESCRIÇAO GIGANTE AQUI",
                style: TextStyle(color: AppColors.btnColors, fontSize: 14.0),
              ),
            ],
          ),
        ));
  }
}

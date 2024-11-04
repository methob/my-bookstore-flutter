
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/model/banner_home.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../navigation/router.config.gr.dart';

class ItemBanner extends StatelessWidget {

  final BannerHomeDTO bannerDTO;

  const ItemBanner({ super.key, required this.bannerDTO });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(DetailBookRoute());
      },
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: LayoutBuilder(
            builder: (context, constraint) {
              return Row(
                children: [
                    Image.network(
                      height: constraint.maxHeight,
                      width: constraint.maxWidth * 0.4,
                      bannerDTO.image ?? "",
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(left: 8, top: 12),
                        color: AppColors.defaultBlack,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(bannerDTO.type ?? "",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 10.85,
                                color: AppColors.textFieldColors
                              )
                            ),
                            const SizedBox(height: 2),
                            Text(bannerDTO.title ?? "",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: const TextStyle(
                                    fontSize: 15.2,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white
                                )
                            ),
                            const SizedBox(height: 8),
                            Text(bannerDTO.author ?? "",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 10.85,
                                    color: Colors.white
                                )
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    Text("\$${bannerDTO.value ?? ""}",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontSize: 18.75,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        )
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(2.17)
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                        child: Text("${bannerDTO.discount ?? ""}% off",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: const TextStyle(
                                                fontSize: 10.85,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                            )
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}
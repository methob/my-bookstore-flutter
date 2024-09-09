
import 'package:bookstore_thais/model/vo/home_item_vo.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeItemBook extends StatelessWidget {

  final HomeBookItemVO? item;

  const HomeItemBook({super.key, this.item});

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
             item?.image ?? "",
              fit: BoxFit.cover,
            ),
            Container(
              color: AppColors.btnColors,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  Text(
                      item?.category ?? "",
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

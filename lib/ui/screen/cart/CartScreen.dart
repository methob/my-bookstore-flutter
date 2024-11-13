import 'package:bookstore_thais/model/vo/home_item_vo.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../../di/di.config.dart';
import '../../../session/ClientSessionManager.dart';

@RoutePage()
class CartScreen extends StatelessWidget {

  var sessionManager = getIt.get<ClientSessionManager>();

  CartScreen({super.key});

  Widget listText(String leftText, String rightText) {
    return Row(
      children: [
        Text(leftText),
        const Spacer(),
        Text(rightText)
      ],
    );
  }

  Widget setupListItem(HomeBookVO? book) {
    final ValueNotifier<int> currentQuantity = ValueNotifier<int>(1);
    return ValueListenableBuilder<int>(
      valueListenable: currentQuantity,
      builder: (context, currentQuantity, child) {
        return Row(
          children: [

          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 19),
            Expanded(
              child: ListView.builder(
                  itemCount: sessionManager.localCart.length,
                  itemBuilder: (context, index) {
                     final item = sessionManager.localCart.elementAt(index);
                     return setupListItem(item);
                  }
              ),
            ),
            const SizedBox(height: 33),
            Text("Order Summary"),
            const SizedBox(height: 18),
            listText("Subtotal", "value1"),
            const SizedBox(height: 9),
            listText("Shipping", "value2"),
            const SizedBox(height: 14),
            const Divider(
              color: AppColors.simpleBlack,
              thickness: 1,
            ),
            const SizedBox(height: 11),
            listText("Total", "Value3")
          ],
        ),
      ),
    );
  }

}

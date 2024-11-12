import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

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
            SizedBox(height: 19),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {

                  }
              ),
            ),
            SizedBox(height: 33),
            Text("Order Summary"),
            SizedBox(height: 18),
            Row(
              children: [
                Text("Subtotal"),
                Spacer(),
                Text("Value1")
              ],
            ),
            SizedBox(height: 9),
            Row(
              children: [
                Text("Shipping"),
                Spacer(),
                Text("Value2")
              ],
            ),
            SizedBox(height: 14),
            Divider(
              color: AppColors.simpleBlack,
              thickness: 1,
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Text("Total"),
                Spacer(),
                Text("Value3")
              ],
            ),
          ],
        ),
      ),
    );
  }

}

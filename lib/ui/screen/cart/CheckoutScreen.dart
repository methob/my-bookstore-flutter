import 'package:auto_route/annotations.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Checkoutscreen extends StatelessWidget {
  Checkoutscreen({super.key});

  final ValueNotifier<bool> _isExpanded = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Checkout",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.simpleBlack)),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 31, left: 20, right: 20, bottom: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Delivering Address",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.simpleBlack)),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                color: AppColors.btnColors,
                padding: const EdgeInsets.all(13),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 159,
                      child: Text(
                          "No.23, James Street, New Town, North Province",
                          style: TextStyle(color: AppColors.primary)),
                    ),
                    Spacer(),
                    Center(
                        child: Text("Change",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.weakGrey)))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent.withOpacity(0),
                  shadowColor: Colors.transparent.withOpacity(0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0)),
                  side:
                      const BorderSide(color: AppColors.defaultBlack, width: 1),
                  minimumSize: const Size(double.infinity, 40)),
              onPressed: () => {},
              child: const Text(
                "Add a New Delivery Address",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.defaultBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text("Payment Method",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.simpleBlack)),
            const SizedBox(height: 19),
            ValueListenableBuilder<bool>(
                valueListenable: _isExpanded,
                builder: (context, isExpandedParam, child) {
                  return Column(
                    children: [
                      ListTile(
                        title: const Text("Clique para expandir"),
                        trailing: const Icon(Icons.keyboard_arrow_down),
                        onTap: () {
                          _isExpanded.value = !isExpandedParam;
                        },
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: isExpandedParam ? 100.0 : 0.0,
                        curve: Curves.easeInOut,
                        child: Container(
                          color: Colors.grey[200],
                          padding: const EdgeInsets.all(16.0),
                          child: const Text("Este é o conteúdo expandido."),
                        ),
                      )
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}

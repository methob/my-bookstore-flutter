import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../navigation/router.config.gr.dart';

@RoutePage()
class Checkoutscreen extends StatelessWidget {
  Checkoutscreen({super.key});

  final ValueNotifier<bool> _isExpanded = ValueNotifier<bool>(false);
  final ValueNotifier<String?> _isChecked = ValueNotifier<String?>("false");

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
            ValueListenableBuilder<String?>(
                valueListenable: _isChecked,
                builder: (context, isChecked, child) {
                  return Column(
                    children: [
                      ValueListenableBuilder<bool>(
                      valueListenable: _isExpanded,
                      builder: (context, isExpandedParam, child) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () => {
                                _isExpanded.value = !isExpandedParam
                              },
                              child: Row(children: [
                              Radio<String>(
                                value: "Credit Card",
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                groupValue: isChecked,
                                onChanged: (value) {
                                  _isChecked.value = value;
                                },
                              ),
                                SizedBox(width: 6),
                                Text("Credit Card", style: TextStyle(
                                    fontWeight: isChecked == "Credit Card" ? FontWeight.w600 : null
                                )),
                                const Spacer(),
                                const Icon(Icons.keyboard_arrow_down)
                              ]),
                            ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: isExpandedParam ? 100.0 : 0.0,
                              curve: Curves.easeInOut,
                              child: Container(
                                color: Colors.grey[200],
                                margin: const EdgeInsets.only(top: 16.0),
                                child: const Text("Este é o conteúdo expandido."),
                              ),
                            ),
                          ],
                        );
                      }),
                      const SizedBox(height: 31),
                      Row(children: [
                        Radio<String>(
                          value: "Cash on Delivery",
                          visualDensity: const VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          groupValue: isChecked,
                          onChanged: (value) {
                              _isChecked.value = value;
                          },
                        ),
                        const SizedBox(width: 6),
                        Text("Cash on Delivery", style: TextStyle(
                          fontWeight: isChecked == "Cash on Delivery" ? FontWeight.w600 : null
                        )),
                      ]),
                    ],
                  );
                }),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const SucessPaymentRoute());
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.btnColors,
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
              child: const Text(
                "pay \$60.00",
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

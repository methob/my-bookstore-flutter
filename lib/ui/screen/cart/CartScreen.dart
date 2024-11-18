import 'package:bookstore_thais/model/vo/home_item_vo.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../../di/di.config.dart';
import '../../../session/ClientSessionManager.dart';

@RoutePage()
class CartScreen extends StatelessWidget {

  final sessionManager = getIt.get<ClientSessionManager>();

  CartScreen({super.key});

  Widget listText(String leftText, String rightText, double textSize) {
    return Row(
      children: [
        Text(leftText,
          style: TextStyle(
            fontSize: textSize,
            color: AppColors.simpleBlack
        )),
        const Spacer(),
        Text(rightText,
        style: TextStyle(
          fontSize: textSize,
          fontWeight: FontWeight.w600,
          color: AppColors.simpleBlack
        ))
      ],
    );
  }

  Widget _increaseOrDecreaseCartQuantity(ValueNotifier<int> currentQuantity) {
    return Row(
      children: [
        InkWell(
          onTap: () => {
            if (currentQuantity.value > 1) {
              currentQuantity.value-=1
            }
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Container(
              color: AppColors.grey,
              height: 24,
              width: 24,
              child: const Center(
                child: Icon(Icons.remove, size: 14, color: AppColors.simpleBlack),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(currentQuantity.value.toString(), style:
          const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.grey
          )
          ,),
        const SizedBox(width: 8),
        InkWell(
          onTap: () => {
            currentQuantity.value+=1
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(3),
            child: Container(
              color: AppColors.grey,
              height: 24,
              width: 24,
              child: const Center(
                child: Icon(Icons.add, size: 14, color: AppColors.simpleBlack),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget setupListItem(HomeBookVO? book) {
    final ValueNotifier<int> currentQuantityEvent = ValueNotifier<int>(1);
    return ValueListenableBuilder<int>(
      valueListenable: currentQuantityEvent,
      builder: (context, currentQuantity, child) {
        return Container(
          height: 140,
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
                        book?.image ?? "",
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 8, top: 12),
                          color: AppColors.defaultBlack,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(book?.category ?? "",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 10.85,
                                      color: AppColors.textFieldColors
                                  )
                              ),
                              const SizedBox(height: 2),
                              Text(book?.title ?? "",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      fontSize: 15.2,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                  )
                              ),
                              const SizedBox(height: 8),
                              Text(book?.author ?? "",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                      fontSize: 10.85,
                                      color: Colors.white
                                  )
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    _increaseOrDecreaseCartQuantity(currentQuantityEvent),
                                    const Spacer(),
                                    Text("\$${book?.value ?? ""}",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontSize: 18.75,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                        )
                                    ),
                                    const SizedBox(width: 9)
                                  ],
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
        );
      },
    );
  }

  Widget showEmptyState() {
    return const Center(child: Text("Não há nada no carrinho.", style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: AppColors.simpleBlack
    ),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Cart"),
      ),
      body: Builder(
        builder: (context) {
          final cart = sessionManager.localCart;
          if (cart.isEmpty) {
            return showEmptyState();
          } else {
            return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 19),
                  Expanded(
                    child: ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          final item = cart.elementAt(
                              index);
                          return Container(
                              margin: EdgeInsets.only(top: 16),
                              child: setupListItem(item)
                          );
                        }
                    ),
                  ),
                  const SizedBox(height: 33),
                  const Text("Order Summary",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.btnColors
                    ),
                  ),
                  const SizedBox(height: 18),
                  listText("Subtotal", "value1", 16),
                  const SizedBox(height: 9),
                  listText("Shipping", "value2", 16),
                  const SizedBox(height: 14),
                  const Divider(
                    color: AppColors.simpleBlack,
                    thickness: 1,
                  ),
                  const SizedBox(height: 11),
                  listText("Total", "Value3", 20),
                  const SizedBox(height: 41),
                  ElevatedButton(
                    onPressed: () {
                      AutoRouter.of(context).push(Checkoutscreen());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.btnColors,
                        minimumSize: const Size(double.infinity, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0))),
                    child: const Text(
                      'Proceed to Checkout',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                ],
              ),
            );
          }
        }
      ),
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SucessPaymentScreen extends StatelessWidget {
  const SucessPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const CloseButton(),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Limita a altura da Column ao seu conteúdo
          children: [
            Icon(Icons.check_box_rounded, size: 236),
            Text("Payment received!"),
            Text("Your order has been validated.")
          ],
        ),
      ),
    );
  }
}

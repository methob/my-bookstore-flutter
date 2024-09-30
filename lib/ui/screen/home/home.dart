import 'package:auto_route/annotations.dart';
import 'package:bookstore_thais/ui/screen/home/widget/icon_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../categories/categories.dart';
import 'home_content.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {

  HomeScreen({super.key});

  final List<Widget> _screens = [
    HomeContent(),         // Tela da Home
    CategoriesScreen(),     // Tela de Categorias
    HomeContent(),           // Tela do Carrinho
    HomeContent()         // Tela da Conta
  ];

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(0);

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: ValueListenableBuilder<int>(
            valueListenable: currentIndexNotifier,
            builder: (context, currentIndex, child) {
              return BottomNavigationBar(
                currentIndex: currentIndex,
                selectedItemColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.black,
                onTap: (index) {
                  currentIndexNotifier.value = index;
                },
                items: [
                  BottomNavigationBarItem(
                      icon: IconNavigationBarWithCustomSelector(
                          icon: Icons.house,
                          index: 0,
                          currentIndex: currentIndex),
                      label: "Home"),
                  BottomNavigationBarItem(
                      icon: IconNavigationBarWithCustomSelector(
                          icon: Icons.category,
                          index: 1,
                          currentIndex: currentIndex),
                      label: "Categories"),
                  BottomNavigationBarItem(
                      icon: IconNavigationBarWithCustomSelector(
                          icon: Icons.shopping_cart,
                          index: 2,
                          currentIndex: currentIndex),
                      label: "Cart"),
                  BottomNavigationBarItem(
                      icon: IconNavigationBarWithCustomSelector(
                          icon: Icons.account_box,
                          index: 3,
                          currentIndex: currentIndex),
                      label: "Account")
                ],
              );
            }),
        body: ValueListenableBuilder<int>(
          valueListenable: currentIndexNotifier,
          builder: (context, currentIndex, child) {
            return _screens[currentIndex];
          }
      ),
    ));
  }
}

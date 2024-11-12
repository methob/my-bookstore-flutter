import 'package:auto_route/auto_route.dart';
import 'package:bookstore_thais/navigation/router.config.gr.dart';
import 'package:bookstore_thais/ui/screen/home/widget/icon_navigation_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: [
          HomeContentRouter(),
          CategoriesRoute(),
          CartRoute(),
          CategoriesRoute()
        ],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              selectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(
                        icon: Icons.house,
                        index: 0,
                        currentIndex: tabsRouter.activeIndex),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(
                        icon: Icons.category,
                        index: 1,
                        currentIndex: tabsRouter.activeIndex),
                    label: "Categories"),
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(
                        icon: Icons.shopping_cart,
                        index: 2,
                        currentIndex: tabsRouter.activeIndex),
                    label: "Cart"),
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(
                        icon: Icons.account_box,
                        index: 3,
                        currentIndex: tabsRouter.activeIndex),
                    label: "Account")
              ],
            ),
          );
        });
  }
}

import 'package:auto_route/annotations.dart';
import 'package:bookstore_thais/model/banner_home.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:bookstore_thais/ui/screen/home/widget/item_banner_home.dart';
import 'package:bookstore_thais/ui/screen/home/widget/icon_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../model/banner_home.dart';

@RoutePage()
class homeScreen extends StatelessWidget {

  homeScreen({super.key});

  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentIndex = 0;

  List<BannerHomeDTO> bannerList = [
    BannerHomeDTO(
        image: "https://t.ctcdn.com.br/Fvptbj1dqz44LSHULZhyU9K-KIQ=/1024x576/smart/i525540.jpeg",
        type: "Novel",
        value: "33.00",
        discount: "12",
        author: "Thais Araujo",
        title: "Harry potter"),
    BannerHomeDTO(
        image: "https://t.ctcdn.com.br/Fvptbj1dqz44LSHULZhyU9K-KIQ=/1024x576/smart/i525540.jpeg",
        type: "Novel",
        value: "50.00",
        discount: "5",
        author: "Thais Araujo",
        title: "Thais Araujo e a camera secreta"),
    BannerHomeDTO(
        image: "https://t.ctcdn.com.br/Fvptbj1dqz44LSHULZhyU9K-KIQ=/1024x576/smart/i525540.jpeg",
        type: "Novel",
        value: "73.67",
        discount: "30",
        author: "Thais Araujo",
        title: "Thais Araujo e a pedra filosofal"),
  ];

  @override
  Widget build(BuildContext context) {

    final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(0);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {

            }, icon: const Icon(Icons.search))
          ],
          title: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Happy Reading!",
              style: TextStyle(
                  color: AppColors.btnColors,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0
              ),
            ),
          ),
          titleSpacing: 0,
        ),
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
                  icon: IconNavigationBarWithCustomSelector(icon: Icons.house, index: 0, currentIndex: currentIndex),
                  label: "Home"
                ),
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(icon: Icons.category, index: 1, currentIndex: currentIndex),
                    label: "Categories"
                ),
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(icon: Icons.shopping_cart, index: 2, currentIndex: currentIndex),
                    label: "Cart"
                ),
                BottomNavigationBarItem(
                    icon: IconNavigationBarWithCustomSelector(icon: Icons.account_box, index: 3, currentIndex: currentIndex),
                    label: "Account"
                )
              ],
            );
          }
        ),
        body: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height
                ),
                child: Container(
                    margin:  const EdgeInsets.only(top: 58),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: const Text(
                              "Best Deals",
                            style: TextStyle(
                              color: AppColors.btnColors,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20, top:16),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 140,
                                child: PageView.builder(
                                  pageSnapping: false,
                                  padEnds: false,
                                  controller: _pageController,
                                  itemCount: bannerList.length,
                                  itemBuilder: (container, index) {
                                    return ItemBanner(bannerDTO: bannerList[index]);
                                  }
                                ),
                              ),
                              const SizedBox(height: 16),
                              Center(
                                child: SmoothPageIndicator(
                                  controller: _pageController,
                                  count: bannerList.length,
                                  effect: const ColorTransitionEffect(
                                    dotHeight: 8,
                                    dotWidth: 8
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ))
            )
        ),
      ),
    );
  }
}
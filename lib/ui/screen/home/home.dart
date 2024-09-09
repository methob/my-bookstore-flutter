import 'package:auto_route/annotations.dart';
import 'package:bookstore_thais/model/banner_home.dart';
import 'package:bookstore_thais/theme/colors.dart';
import 'package:bookstore_thais/ui/screen/home/widget/home_section_book_header.dart';
import 'package:bookstore_thais/ui/screen/home/widget/item_banner_home.dart';
import 'package:bookstore_thais/ui/screen/home/widget/icon_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../model/home_book_item.dart';
import '../../../model/home_book_section.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final PageController _pageController = PageController(viewportFraction: 0.8);
  final List<BannerHomeDTO> bannerList = [
    BannerHomeDTO(
        image:
            "https://t.ctcdn.com.br/Fvptbj1dqz44LSHULZhyU9K-KIQ=/1024x576/smart/i525540.jpeg",
        type: "Novel",
        value: "33.00",
        discount: "12",
        author: "Thais Araujo",
        title: "Harry potter"),
    BannerHomeDTO(
        image:
            "https://t.ctcdn.com.br/Fvptbj1dqz44LSHULZhyU9K-KIQ=/1024x576/smart/i525540.jpeg",
        type: "Novel",
        value: "50.00",
        discount: "5",
        author: "Thais Araujo",
        title: "Thais Araujo e a camera secreta"),
    BannerHomeDTO(
        image:
            "https://t.ctcdn.com.br/Fvptbj1dqz44LSHULZhyU9K-KIQ=/1024x576/smart/i525540.jpeg",
        type: "Novel",
        value: "73.67",
        discount: "30",
        author: "Thais Araujo",
        title: "Thais Araujo e a pedra filosofal"),
  ];
  List<HomeBookSection> homeBookSections = List.generate(10, (index) {
    return HomeBookSection(
      title: 'Seção ${index + 1}', // Título fictício para cada seção
      id: 'sec${index + 1}', // ID fictício para cada seção
      items: List.generate(5, (itemIndex) {
        // Criando uma lista de HomeBook com 5 itens para cada seção
        return HomeBook(
          image: 'https://example.com/image${itemIndex + 1}.png',
          // URL fictícia da imagem
          title: 'Título do Livro ${itemIndex + 1}',
          // Título fictício do livro
          type: 'Ficção',
          // Tipo fictício do livro
          author: 'Autor ${itemIndex + 1}',
          // Nome fictício do autor
          value: '\$${(itemIndex + 1) * 10}',
          // Valor fictício do livro
          releaseDate: '2024-0${itemIndex + 1}-01',
          // Data fictícia de lançamento
          sellingTOP: SellingTOP.values[itemIndex % 3], // Alternando entre semana, mês e ano
        );
      }),
    );
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentIndexNotifier = ValueNotifier<int>(0);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          title: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Happy Reading!",
              style: TextStyle(
                  color: AppColors.btnColors,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
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
        body: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.only(top: 58),
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
                            fontSize: 20.0),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 16),
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
                                  return ItemBanner(
                                      bannerDTO: bannerList[index]);
                                }),
                          ),
                          const SizedBox(height: 16),
                          Center(
                            child: SmoothPageIndicator(
                              controller: _pageController,
                              count: bannerList.length,
                              effect: const ColorTransitionEffect(
                                  dotHeight: 8, dotWidth: 8),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final List<String?> combinedList = [];
                              homeBookSections.forEach((items) {
                                combinedList.add(items.title);
                                combinedList.addAll(items.items!.map((test) => test.title));
                              });
                              return ListView.builder(
                                  shrinkWrap: true, // TODO bad performance issue, change to slivers, in this code in going to use this, but change in the future
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: combinedList.length,
                                  itemBuilder: (context, index) {
                                        var section = combinedList[index];
                                        return ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            title: HomeSectionBookHeader(
                                                title: section ?? "",
                                                showFilter: true,
                                            ),
                                            subtitle: Text("Teste"),
                                        );
                                    }
                                  );
                            }
                          )
                        ],
                      ),
                    ),
                  ],
                ))),
      ),
    );
  }
}

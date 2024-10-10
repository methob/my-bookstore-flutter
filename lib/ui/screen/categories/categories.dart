import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../model/category.dart';
import '../../../theme/colors.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  TextEditingController searchController = TextEditingController();

  List<Category> getCategories() {
    return List.generate(20, (index) {
      return Category(
        id: index.toString(),
        title: 'Category $index',
        imageUrl:
            'https://picsum.photos/200/300?random=$index', // Imagens aleatórias
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = getCategories();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 32),
            padding: const EdgeInsets.only(top: 32),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 56,
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        filled: true,
                        fillColor: AppColors.textFieldColors,
                        hintStyle: const TextStyle(
                            fontSize: 12, color: AppColors.simpleBlack),
                        hintText: "Search title/author/ISBN no",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 52,
                  height: 56,
                  decoration: BoxDecoration(
                      color: AppColors.textFieldColors,
                      borderRadius: BorderRadius.circular(5.0)),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt_rounded)),
                )
              ],
            ),
          ),
          const SizedBox(height: 32),
          const Text(
            "Categories",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.simpleBlack),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 3 / 2),
                padding: EdgeInsets.only(bottom: 12),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final category = categories[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Stack(fit: StackFit.expand, children: [
                      Image.network(
                        category.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      Container(
                          decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          // Gradiente começa do topo
                          end: Alignment.bottomCenter,
                          // E vai até o final da imagem
                          colors: [
                            const Color(0xFF00008B).withOpacity(0.9),
                            // Azul escuro com preto
                            const Color(0xFF000000).withOpacity(0.6),
                            // Preto mais claro
                            const Color(0xFFFFFFFF).withOpacity(0.1),
                            // Vai clareando
                          ],
                          stops: const [0.0, 0.5, 1.0], // Pontos de transição do gradiente
                        ),
                      )),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          category.title,
                          style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                  );
                }),
          )
        ],
      ),
    );
  }
}

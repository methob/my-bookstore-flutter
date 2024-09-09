
import 'package:bookstore_thais/model/home_book_item.dart';

class HomeBookSection {
  final String? title;
  final String? id;
  final List<HomeBook>? items;

  HomeBookSection({
    this.title,
    this.id,
    this.items
  });
}
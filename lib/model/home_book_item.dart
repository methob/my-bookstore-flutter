
import 'package:bookstore_thais/model/vo/home_item_vo.dart';

class HomeBook {
  final String? image;
  final String? title;
  final String? type;
  final String? author;
  final String? value;
  final String? releaseDate;
  final SellingTOP? sellingTOP;

  HomeBook({
    this.image,
    this.title,
    this.type,
    this.author,
    this.value,
    this.releaseDate,
    this.sellingTOP
  });

  HomeBookVO? toHomeBookVO() {
    return HomeBookVO(
        title: title,
        image: image,
        category: type,
        author: author,
        value: value
    );
  }
}

enum SellingTOP {
  week, month, year
}
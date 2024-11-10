
import 'package:bookstore_thais/model/vo/home_item_vo.dart';

class BannerHomeDTO {
  final String? image;
  final String? title;
  final String? type;
  final String? author;
  final String? value;
  final String? discount;

  BannerHomeDTO({
    this.image,
    this.title,
    this.type,
    this.author,
    this.value,
    this.discount,
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
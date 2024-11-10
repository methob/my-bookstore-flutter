class HomeItemVO {}

class HomeHeaderItemVO extends HomeItemVO {

  final String? title;

  HomeHeaderItemVO({this.title});
}
class HomeBookVO extends HomeItemVO {

  final String? image;
  final String? category;
  final String? title;
  final String? author;
  final String? value;

  HomeBookVO({this.image, this.title, this.category, this.author, this.value});
}


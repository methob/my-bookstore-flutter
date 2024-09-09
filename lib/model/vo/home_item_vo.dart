class HomeItemVO {}

class HomeHeaderItemVO extends HomeItemVO {

  final String? title;

  HomeHeaderItemVO({this.title});
}
class HomeBookItemVO extends HomeItemVO {

  final String? image;
  final String? category;
  final String? title;
  final String? author;
  final String? value;

  HomeBookItemVO({this.image, this.title, this.category, this.author, this.value});
}


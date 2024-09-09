
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
}

enum SellingTOP {
  week, month, year
}
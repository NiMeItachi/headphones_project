class Product {
  final String imgLink;
  bool selected;

  Product({
    required this.imgLink,
    required this.selected,
  });
}

final products = [
  Product(imgLink: "assets/images/img_headphone_2.png", selected: false),
  Product(imgLink: "assets/images/img_headphone_3.png", selected: false),
  Product(imgLink: "assets/images/img_headphone_1.png", selected: false),
];
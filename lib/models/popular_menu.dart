class PopularMenu {
  String image;
  String foodName;
  String foodPlace;
  String price;
  bool isDisabled;
  PopularMenu({
    required this.image,
    required this.foodName,
    required this.foodPlace,
    required this.price,
    this.isDisabled = true,
  });
}

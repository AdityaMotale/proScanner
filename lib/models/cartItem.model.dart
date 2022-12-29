class CartItemModel {
  late final String id;
  late final String title;
  late final String imgSrc;
  late final String quantity;
  late final int price;

  CartItemModel({
    required this.id,
    required this.title,
    required this.imgSrc,
    required this.quantity,
    required this.price,
  });

  CartItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imgSrc = json['imgSrc'];
    quantity = json['quantity'];
    price = json['price'];
  }
}

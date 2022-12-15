class CartModel {
  CartModel({
    required this.id,
    required this.products,
    required this.total,
    required this.discountedTotal,
    required this.userId,
    required this.totalProducts,
    required this.totalQuantity,
  });

  final int id;
  final List<CartRepoModel> products;
  final int total;
  final int discountedTotal;
  final int userId;
  final int totalProducts;
  final int totalQuantity;

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
    id: json["id"],
    products: List<CartRepoModel>.from(json["products"].map((x) => CartRepoModel.fromJson(x))),
    total: json["total"],
    discountedTotal: json["discountedTotal"],
    userId: json["userId"],
    totalProducts: json["totalProducts"],
    totalQuantity: json["totalQuantity"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
    "total": total,
    "discountedTotal": discountedTotal,
    "userId": userId,
    "totalProducts": totalProducts,
    "totalQuantity": totalQuantity,
  };
}

class CartRepoModel {
  CartRepoModel({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.total,
    required this.discountPercentage,
    required this.discountedPrice,
  });

  final int id;
  final String title;
  final int price;
  final int quantity;
  final int total;
  final double discountPercentage;
  final int discountedPrice;

  factory CartRepoModel.fromJson(Map<String, dynamic> json) => CartRepoModel(
    id: json["id"],
    title: json["title"],
    price: json["price"],
    quantity: json["quantity"],
    total: json["total"],
    discountPercentage: json["discountPercentage"].toDouble(),
    discountedPrice: json["discountedPrice"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "quantity": quantity,
    "total": total,
    "discountPercentage": discountPercentage,
    "discountedPrice": discountedPrice,
  };
}
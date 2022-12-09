import 'dart:ui';

class SingleProductRepoModel {
  final int id;
  final String title;
  final String description;
  final int price;
  final int discountpercintage;
  final int rating;
  final int stock;
  final String brand;
  final String category;
  final Image thumbnail;
  final List images;

  SingleProductRepoModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountpercintage,
      required this.rating,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images});
}

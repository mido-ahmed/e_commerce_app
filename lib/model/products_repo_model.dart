class ProductRepoModel {
  final int id;
  final String title;
  final int priice;
  final String description;
  final Map category;
  final List images;

  ProductRepoModel({
    required this.id,
    required this.title,
    required this.priice,
    required this.description,
    required this.category,
    required this.images,
  });
}

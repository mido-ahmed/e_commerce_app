import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/category_repo_model.dart';
import 'package:e_commerce_app/model/products_repo_model.dart';
import 'package:http/http.dart' as http;

class ProductsRepo {
  Future<List<ProductRepoModel>> getAllProducts() async {
    final response = await Dio()
        .get('https://api.escuelajs.co/api/v1/products/'); //kda gbt eld2w2

    final ListOfProducts = List<ProductRepoModel>.from(
      response.data.map(
        (value) => ProductRepoModel(
            id: value['id'],
            title: value['title'],
            priice: value['price'],
            description: value['description'],
            category: value['category'],
            images: value['images']),
      ),
    ); //kda d2e2 l 3gena

    return ListOfProducts;
  }
}

import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/products_repo_model.dart';
import 'package:e_commerce_app/model/single_product_repo_model.dart';

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

class SigleProductRepo {
  Future<SingleProductRepoModel> getsingleproducts(int productid) async {
    final response =
        await Dio().get('https://dummyjson.com/products/$productid');

    final singleproduct = SingleProductRepoModel(
        id: response.data['id'],
        images: response.data['images'],
        title: response.data['title'],
        price: response.data['price'],
        description: response.data['description'],
        category: response.data['category'],
        brand: response.data['response.data'],
        discountpercintage: response.data['discountPercentage'],
        rating: response.data['rating'],
        stock: response.data['stock'],
        thumbnail: response.data['thumbnail']);

    return singleproduct;
  }
}

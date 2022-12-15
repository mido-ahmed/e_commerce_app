import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/cart_repo_model.dart';

class CartRepository {
  Future<List<CartRepoModel>> getCart() async {
    final response = await Dio().get('https://dummyjson.com/carts/1');
    print('response :: ${response.data}');
    final cart = List<CartRepoModel>.from(
      response.data['products'].map((value) => CartRepoModel(
          id: value['id'],
          title: value['title'],
          price: value['price'],
          quantity: value['quantity'],
          total: value['total'],
          discountPercentage: value['discountPercentage'],
          discountedPrice: value['discountedPrice'])),
    );
    return cart ;
  }
}
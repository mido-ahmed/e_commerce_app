part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductNotFound extends ProductState {}

class ProductSuccess extends ProductState {
  final SingleProductRepoModel productModel;

  ProductSuccess(this.productModel);
}

class NotInternetConnection extends ProductState {}

class ErrorInProduct extends ProductState {}

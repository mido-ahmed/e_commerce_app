part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartInitial extends CartState {}

class CartWiting extends CartState {}

class CartSuccess extends CartState {
  List<CartRepoModel> list;
  CartSuccess(this.list);
}

import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/Repository/cart_repo.dart';
import 'package:e_commerce_app/model/cart_repo_model.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  void getCart() async {
    final cart = await CartRepository().getCart();
    emit(CartSuccess(cart));
  }
}

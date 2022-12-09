import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/Repository/Products_repo.dart';
import 'package:e_commerce_app/model/single_product_repo_model.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  void getsingleproduct(int productid) async {
    final productdata = await SigleProductRepo().getsingleproducts(productid);
    emit(ProductSuccess(productdata));
  }
}

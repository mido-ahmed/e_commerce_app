import 'package:e_commerce_app/widgets/global_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/product_cubit/product_cubit.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({Key? key}) : super(key: key);

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductSuccess){
          return ScaffoldGlobalWidget(
            title: '',
            ladingIcon: Icon(Icons.arrow_back),
            body: ListView(
              children: [
                SizedBox(height: 10,)
              ],
            ),
          );
        }
        return Scaffold(body: Center(child: SizedBox(height: 20, child: Text("hello"),)));
        }

    );
  }
}

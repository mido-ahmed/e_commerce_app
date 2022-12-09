import 'package:e_commerce_app/Repository/category_repo.dart';
import 'package:flutter/material.dart';

import '../model/category_products_model.dart';

class CategoryProductScreen extends StatelessWidget {
  String categoryName;
  CategoryProductScreen({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          '$categoryName category',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: FutureBuilder<List<Product>>(
          future: CategoryRepository().getProductsByCactegory(categoryName),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                final listOfProducts = snapshot.data!;

                return GridView.builder(
                  itemCount: listOfProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            listOfProducts[index].thumbnail,
                            height: 50,
                            width: 100,
                          ),
                          SizedBox(height: 5),

                          Text('${listOfProducts[index].title}'),

                          SizedBox(height: 5),
                          // TODO RATING

                          Text('\$ ${listOfProducts[index].price}'),

                          Row(
                            children: [
                              Text('\$250'),
                              SizedBox(width: 10),
                              Text(
                                  '${listOfProducts[index].discountPercentage}%'),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 1,
                  ),
                );
              }
            }
            return Text('Try Again Later!');
          }),
    );
  }
}

import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/category_repo_model.dart';
import 'package:http/http.dart' as http;

class CategoryRepository {
  Future<List<CategoryRepoModel>> getAllCategories() async {
    final response = await Dio().get(
        'https://mocki.io/v1/e5775744-06ba-4306-b6f6-93055de3c2d5'); //kda gbt eld2w2

    final ListOfCategories = List<CategoryRepoModel>.from(
      response.data.map(
        (value) => CategoryRepoModel(
          id: value['id'],
          name: value['name'],
          image: value['image'],
        ),
      ),
    ); //kda d2e2 l 3gena

    return ListOfCategories;
  }
}

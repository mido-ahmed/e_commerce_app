import 'package:dio/dio.dart';
import 'package:e_commerce_app/model/characters_repo_model.dart';
//Step 1 --> check Api in postman
class CharactersReposotory {
  ///Step 2 --> fetching data from api
  Future<CharactersRepoModel> getAllCharacters() async {
    final response = await Dio().get('https://api.escuelajs.co/api/v1/users');

    final characters = CharactersRepoModel.fromJson(response.data);
    return characters;
  }
}

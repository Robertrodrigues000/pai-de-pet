import 'dart:convert';
import 'package:http/http.dart';
import 'package:rickandmorty/infra/models/char_model.dart';

import '../domain/entitites/char_entity.dart';
import '../infra/datasource/char_datasource.dart';

class CharDatasource extends ICharDatasource {
  final url = "https://rickandmortyapi.com/api/character/1,2,3,4,5,6,7,85,22,48,62";
  Client client = Client();

  @override
  Future<List<CharEntity>> getCharList() async {
    try {
      final response = await client.get(Uri.parse(url));
      final data = (jsonDecode(response.body) as List)
          .map((item) => CharModel.fromJson(item))
          .toList();
      return data;
    } catch (e) {
      rethrow;
    }
  }
}

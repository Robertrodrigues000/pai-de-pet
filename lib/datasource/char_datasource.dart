import 'dart:convert';
import 'package:http/http.dart';
import 'package:rickandmorty/infra/models/char_model.dart';

import '../domain/entitites/char_entity.dart';

class CharDatasource {
  final url = "https://rickandmortyapi.com/api/character/1,183";
  Client client = Client();

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

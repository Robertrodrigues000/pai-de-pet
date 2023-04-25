import 'package:rickandmorty/domain/entitites/char_entity.dart';

abstract class ICharDatasource {
  Future<List<CharEntity>> getCharList();
}
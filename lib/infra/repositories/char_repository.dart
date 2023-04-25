import 'package:rickandmorty/domain/repositories/char_repository.dart';

import '../../datasource/char_datasource.dart';
import '../../domain/entitites/char_entity.dart';

class CharRepository extends ICharRepository{
  final CharDatasource _charDatasource;
  CharRepository({required CharDatasource charDatasource}): _charDatasource = charDatasource;

  @override
  Future<List<CharEntity>> getCharList() {
    try {
    return _charDatasource.getCharList();
      
    } catch (e) {
      rethrow;
    }
  }
}
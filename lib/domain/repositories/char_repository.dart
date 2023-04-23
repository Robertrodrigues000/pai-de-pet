import 'package:rickandmorty/datasource/char_datasource.dart';

import '../entitites/char_entity.dart';

abstract class CharRepository {
  final CharDatasource _charDatasource;
  CharRepository(this._charDatasource);

  Future<List<CharEntity>> getCharList() {
    return _charDatasource.getCharList();
  }
}
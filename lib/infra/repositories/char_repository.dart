import 'package:rickandmorty/domain/repositories/char_repository.dart';

import '../../domain/entitites/author_entity.dart';
import '../../external/datasource/char_datasource.dart';

class CharRepository extends ICharRepository {
  final CharDatasource _charDatasource;
  CharRepository({required CharDatasource charDatasource})
      : _charDatasource = charDatasource;

  @override
  Future<List<AuthorEntity>> getHomeInfo() {
    try {
      return _charDatasource.getHomeInfo();
    } catch (e) {
      rethrow;
    }
  }
}

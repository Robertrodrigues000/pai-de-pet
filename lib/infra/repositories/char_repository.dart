import 'package:rickandmorty/domain/repositories/char_repository.dart';

import '../../domain/entitites/home_info_entity.dart';
import '../../external/datasource/char_datasource.dart';

class CharRepository extends ICharRepository {
  final CharDatasource _charDatasource;
  CharRepository({required CharDatasource charDatasource})
      : _charDatasource = charDatasource;

  @override
  Future<HomeInfoEntity> getHomeInfo() {
    try {
      return _charDatasource.getHomeInfo();
    } catch (e) {
      rethrow;
    }
  }
}

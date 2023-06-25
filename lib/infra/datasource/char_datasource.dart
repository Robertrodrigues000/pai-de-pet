import 'package:rickandmorty/domain/entitites/author_entity.dart';

abstract class ICharDatasource {
  Future<List<AuthorEntity>> getHomeInfo();
}

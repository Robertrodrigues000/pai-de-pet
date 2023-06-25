import '../entitites/author_entity.dart';

abstract class ICharRepository {
  Future<List<AuthorEntity>> getHomeInfo();
}

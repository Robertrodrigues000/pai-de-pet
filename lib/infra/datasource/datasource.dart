import '../../domain/entitites/book_entity.dart';
import '../../domain/entitites/home_info_entity.dart';

abstract class IDatasource {
  Future<HomeInfoEntity> getHomeInfo();
  Future<BookEntity> getBook({
    required String bookId,
  });
}

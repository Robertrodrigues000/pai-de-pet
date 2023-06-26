import '../entitites/book_entity.dart';
import '../entitites/home_info_entity.dart';

abstract class IRepository {
  Future<HomeInfoEntity> getHomeInfo();
  Future<BookEntity> getBook({
    required String bookId,
  });
}

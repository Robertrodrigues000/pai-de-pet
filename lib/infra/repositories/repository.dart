import 'package:rickandmorty/domain/repositories/repository.dart';

import '../../domain/entitites/book_entity.dart';
import '../../domain/entitites/home_info_entity.dart';
import '../../external/datasource/datasource.dart';

class Repository extends IRepository {
  final Datasource _datasource;
  Repository({required Datasource datasource}) : _datasource = datasource;

  @override
  Future<HomeInfoEntity> getHomeInfo() {
    try {
      return _datasource.getHomeInfo();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<BookEntity> getBook({
    required String bookId,
  }) {
    try {
      return _datasource.getBook(
        bookId: bookId,
      );
    } catch (e) {
      rethrow;
    }
  }
}

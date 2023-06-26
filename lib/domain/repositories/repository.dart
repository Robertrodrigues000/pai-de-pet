import 'package:flutter/material.dart';

import '../entitites/book_entity.dart';
import '../entitites/home_info_entity.dart';

abstract class IRepository {
  Future<HomeInfoEntity> getHomeInfo({required BuildContext? context});
  Future<BookEntity> getBook({
    required String bookId,
    required BuildContext? context,
  });
}

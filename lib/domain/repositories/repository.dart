import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

import '../entitites/book_entity.dart';
import '../entitites/home_info_entity.dart';

abstract class IRepository {
  Future<Either<dynamic, HomeInfoEntity>>getHomeInfo();
  Future<BookEntity> getBook({
    required String bookId,
    required BuildContext? context,
  });
}

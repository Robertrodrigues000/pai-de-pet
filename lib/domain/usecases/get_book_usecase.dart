import 'package:flutter/widgets.dart';

import '../../infra/repositories/repository.dart';
import '../entitites/book_entity.dart';

class GetBookUsecase {
  final Repository _repository;

  GetBookUsecase({
    required Repository repository,
  }) : _repository = repository;

  Future<BookEntity> call({
    required String bookId,
    required BuildContext? context,
  }) async {
    return await _repository.getBook(
      bookId: bookId,
      context: context,
    );
  }
}

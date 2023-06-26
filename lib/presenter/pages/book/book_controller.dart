import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/entitites/book_entity.dart';
import '../../../domain/usecases/get_book_usecase.dart';

class BookController extends ChangeNotifier {
  final String _bookId;

  final _getbookUsecase = Modular.get<GetBookUsecase>();
  final bookListListenable = ValueNotifier<BookEntity?>(null);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  BookController({
    required String bookId,
  }) : _bookId = bookId {
    _getBook();
  }

  Future _getBook() async {
    bookListListenable.value = await _getbookUsecase(bookId: _bookId, context: scaffoldKey.currentContext);
    bookListListenable.notifyListeners();
  }
}

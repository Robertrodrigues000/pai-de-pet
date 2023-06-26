import 'package:flutter/cupertino.dart';
import 'package:rickandmorty/domain/repositories/repository.dart';
import 'package:rickandmorty/presenter/widgets/snackbar_widget.dart';

import '../../domain/entitites/book_entity.dart';
import '../../domain/entitites/home_info_entity.dart';
import '../../external/datasource/datasource.dart';

class Repository extends IRepository {
  final Datasource _datasource;
  Repository({required Datasource datasource}) : _datasource = datasource;

  @override
  Future<HomeInfoEntity> getHomeInfo({required BuildContext? context}) {
    try {
      return _datasource.getHomeInfo();
    } catch (e) {
      SnackbarHelper.error(
        message:
            'Erro ao carregar as informações, favor tentar novamente mais tarde.',
        context: context!,
      );
      rethrow;
    }
  }

  @override
  Future<BookEntity> getBook({
    required String bookId,
    required BuildContext? context,
  }) {
    try {
      return _datasource.getBook(
        bookId: bookId,
      );
    } catch (e) {
      SnackbarHelper.error(
        message:
            'Erro ao carregar as informações do livro, favor tentar novamente mais tarde.',
        context: context!,
      );
      rethrow;
    }
  }
}

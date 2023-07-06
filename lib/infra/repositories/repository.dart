import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

import '../../domain/entitites/book_entity.dart';
import '../../domain/entitites/home_info_entity.dart';
import '../../domain/repositories/repository.dart';
import '../../external/datasource/datasource.dart';
import '../../presenter/widgets/snackbar_widget.dart';

class Repository extends IRepository {
  final Datasource _datasource;
  Repository({required Datasource datasource}) : _datasource = datasource;

  @override
  Future<Either<Exception, HomeInfoEntity>> getHomeInfo() async {
    try {
      HomeInfoEntity response = await _datasource.getHomeInfo();
      return Right(response);
    } on DioException catch(e) {
      return Left(e);
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

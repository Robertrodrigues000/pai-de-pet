import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/entitites/author_entity.dart';
import '../../../domain/entitites/book_entity.dart';
import '../../../domain/entitites/home_info_entity.dart';
import '../../../domain/usecases/get_home_info_usecase.dart';
import '../../widgets/snackbar_widget.dart';

class HomeController extends ChangeNotifier {
  final _getHomeInfoUsecase = Modular.get<GetHomeInfoUsecase>();
  final homeInfoListListenable = ValueNotifier<HomeInfoEntity?>(null);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  HomeController() {
    _getHomeInfo();
  }

  HomeInfoEntity get homeInfo => homeInfoListListenable.value!;
  List<BookEntity> get favoriteBooks => homeInfo.favoriteBooks;
  List<BookEntity> get allBooks => homeInfo.allBooks;
  List<AuthorEntity> get favoriteAuthors => homeInfo.favoriteAuthors;

  Future<void> _getHomeInfo() async {
    var response = await _getHomeInfoUsecase();

    if (response.isRight) {
      homeInfoListListenable.value = response.right;
      homeInfoListListenable.notifyListeners();
    } else {
      SnackbarHelper.error(
        message:
            'Erro ao carregar as informações, favor tentar novamente mais tarde.',
        context: scaffoldKey.currentContext!,
      );
    }
  }
}

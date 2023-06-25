import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/entitites/author_entity.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';
import 'package:rickandmorty/domain/usecases/get_home_info_usecase.dart';

import '../../../domain/entitites/home_info_entity.dart';

class HomeController extends ChangeNotifier {
  final _getCharUsecase = Modular.get<GetHomeInfoUsecase>();
  final homeInfoListListenable = ValueNotifier<HomeInfoEntity?>(null);

  HomeController() {
    _getHomeInfo();
  }

  HomeInfoEntity get homeInfo => homeInfoListListenable.value!;
  List<BookEntity> get favoriteBooks => homeInfo.favoriteBooks;
  List<BookEntity> get allBooks => homeInfo.allBooks;
  List<AuthorEntity> get favoriteAuthors => homeInfo.favoriteAuthors;

  Future _getHomeInfo() async {
    homeInfoListListenable.value = await _getCharUsecase();
    homeInfoListListenable.notifyListeners();
  }
}

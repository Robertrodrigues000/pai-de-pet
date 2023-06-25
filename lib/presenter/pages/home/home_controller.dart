import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/entitites/author_entity.dart';
import 'package:rickandmorty/domain/usecases/get_char_usecase.dart';

class HomeController extends ChangeNotifier {
  final _getCharUsecase = Modular.get<GetCharUsecase>();
  final chartListListenable = ValueNotifier<List<AuthorEntity>>([]);

  HomeController() {
    _getHomeInfo();
  }

  Future _getHomeInfo() async {
    chartListListenable.value = await _getCharUsecase();
    chartListListenable.notifyListeners();
  }
}

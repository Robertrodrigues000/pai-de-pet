import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/usecases/get_char_usecase.dart';

import '../../../domain/entitites/home_info_entity.dart';

class HomeController extends ChangeNotifier {
  final _getCharUsecase = Modular.get<GetCharUsecase>();
  final chartListListenable = ValueNotifier<HomeInfoEntity?>(null);

  HomeController() {
    _getHomeInfo();
  }

  Future _getHomeInfo() async {
    chartListListenable.value = await _getCharUsecase();
    chartListListenable.notifyListeners();
  }
}

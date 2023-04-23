import 'package:flutter/cupertino.dart';
import 'package:rickandmorty/domain/entitites/char_entity.dart';
import 'package:rickandmorty/domain/usecases/get_char_usecase.dart';

class HomeController extends ChangeNotifier {
  final GetCharUsecase _getCharUsecase;

  HomeController({required GetCharUsecase getCharUsecase})
      : _getCharUsecase = getCharUsecase;

  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }

  Future getCharList() async {
    List<CharEntity> charList = await _getCharUsecase();
    return charList;
  }
}

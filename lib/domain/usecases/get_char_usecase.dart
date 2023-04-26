import 'package:rickandmorty/domain/entitites/char_entity.dart';

import '../../infra/repositories/char_repository.dart';

class GetCharUsecase {
  final CharRepository _charRepository;

  GetCharUsecase({required CharRepository charRepository}) : _charRepository = charRepository { _init();}

  Future<List<CharEntity>> call() async {
    return await _charRepository.getCharList();
  }
}

class _init {
}

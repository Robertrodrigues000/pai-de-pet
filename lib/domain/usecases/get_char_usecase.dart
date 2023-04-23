import 'package:rickandmorty/domain/entitites/char_entity.dart';

import '../repositories/char_repository.dart';

class GetCharUsecase {
  final CharRepository _charRepository;

  GetCharUsecase({required charRepository}) : _charRepository = charRepository;

  Future<List<CharEntity>> call() async {
    return await _charRepository.getCharList();
  }
}

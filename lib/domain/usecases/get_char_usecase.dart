import 'package:rickandmorty/domain/entitites/author_entity.dart';

import '../../infra/repositories/char_repository.dart';

class GetCharUsecase {
  final CharRepository _charRepository;

  GetCharUsecase({required CharRepository charRepository})
      : _charRepository = charRepository {
    _init();
  }

  Future<List<AuthorEntity>> call() async {
    return await _charRepository.getHomeInfo();
  }

  void _init() {}
}

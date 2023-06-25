import '../../infra/repositories/char_repository.dart';
import '../entitites/home_info_entity.dart';

class GetCharUsecase {
  final CharRepository _charRepository;

  GetCharUsecase({required CharRepository charRepository})
      : _charRepository = charRepository {
    _init();
  }

  Future<HomeInfoEntity> call() async {
    return await _charRepository.getHomeInfo();
  }

  void _init() {}
}

import '../../infra/repositories/repository.dart';
import '../entitites/home_info_entity.dart';

class GetHomeInfoUsecase {
  final Repository _repository;

  GetHomeInfoUsecase({required Repository repository})
      : _repository = repository {
    _init();
  }

  Future<HomeInfoEntity> call() async {
    return await _repository.getHomeInfo();
  }

  void _init() {}
}

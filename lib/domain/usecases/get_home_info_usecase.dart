import 'package:either_dart/either.dart';

import '../../infra/repositories/repository.dart';
import '../entitites/home_info_entity.dart';

class GetHomeInfoUsecase {
  final Repository _repository;

  GetHomeInfoUsecase({
    required Repository repository,
  }) : _repository = repository;

  Future<Either<dynamic, HomeInfoEntity>> call() async {
    return await _repository.getHomeInfo();
  }
}

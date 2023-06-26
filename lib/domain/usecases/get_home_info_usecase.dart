import 'package:flutter/widgets.dart';

import '../../infra/repositories/repository.dart';
import '../entitites/home_info_entity.dart';

class GetHomeInfoUsecase {
  final Repository _repository;

  GetHomeInfoUsecase({
    required Repository repository,
  }) : _repository = repository;

  Future<HomeInfoEntity> call({required BuildContext? context}) async {
    return await _repository.getHomeInfo(context: context);
  }
}

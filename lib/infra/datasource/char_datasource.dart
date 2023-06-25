import '../../domain/entitites/home_info_entity.dart';

abstract class ICharDatasource {
  Future<HomeInfoEntity> getHomeInfo();
}

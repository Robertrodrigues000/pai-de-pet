import '../../domain/entitites/home_info_entity.dart';

abstract class IDatasource {
  Future<HomeInfoEntity> getHomeInfo();
}

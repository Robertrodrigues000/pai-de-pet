import '../entitites/home_info_entity.dart';

abstract class IRepository {
  Future<HomeInfoEntity> getHomeInfo();
}

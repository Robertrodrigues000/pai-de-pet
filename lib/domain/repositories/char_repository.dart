import '../entitites/home_info_entity.dart';

abstract class ICharRepository {
  Future<HomeInfoEntity> getHomeInfo();
}

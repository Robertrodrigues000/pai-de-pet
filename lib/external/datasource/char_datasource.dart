import 'package:rickandmorty/external/graphiql/app_queries.dart';
import 'package:rickandmorty/external/mappers/home_info_mapper.dart';

import '../../domain/entitites/home_info_entity.dart';
import '../../infra/datasource/char_datasource.dart';
import 'package:hasura_connect/hasura_connect.dart';

class CharDatasource extends ICharDatasource {
  final String url = 'https://us-central1-ss-devops.cloudfunctions.net/GraphQL';

  @override
  Future<HomeInfoEntity> getHomeInfo() async {
    HasuraConnect hasuraConnect = HasuraConnect(url);

    try {
      final response = await hasuraConnect.query(AppQueries.getHomeInfo());
      return HomeInfoMapper.fromMap(response['data']);
    } catch (e) {
      rethrow;
    }
    //   final response = await client.get(Uri.parse(url));
    //   final data = (jsonDecode(response.body) as List)
    //       .map((item) => HomeInfoMapper.fromMap(item))
    //       .toList();
    //   return data;
    // } catch (e) {
    //   rethrow;
    // }
  }
}

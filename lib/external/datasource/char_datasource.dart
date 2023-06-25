import '../../domain/entitites/author_entity.dart';
import '../../infra/datasource/char_datasource.dart';
import 'package:hasura_connect/hasura_connect.dart';

class CharDatasource extends ICharDatasource {
  final String url = 'https://us-central1-ss-devops.cloudfunctions.net/GraphQL';

  @override
  Future<List<AuthorEntity>> getHomeInfo() async {
    HasuraConnect hasuraConnect = HasuraConnect(url);
    List<AuthorEntity> list = [];
    return list;
    // try {
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

import 'package:rickandmorty/external/graphiql/app_queries.dart';
import 'package:rickandmorty/external/mappers/home_info_mapper.dart';

import '../../domain/entitites/book_entity.dart';
import '../../domain/entitites/home_info_entity.dart';
import '../../infra/datasource/datasource.dart';
import 'package:hasura_connect/hasura_connect.dart';

import '../mappers/book_mapper.dart';

class Datasource extends IDatasource {
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
  }

  @override
  Future<BookEntity> getBook({
    required String bookId,
  }) async {
    HasuraConnect hasuraConnect = HasuraConnect(url);

    try {
      final response =
          await hasuraConnect.query(AppQueries.getBook(bookId: bookId));
      return BookMapper.fromMap(response['data']['book']);
    } catch (e) {
      rethrow;
    }
  }
}

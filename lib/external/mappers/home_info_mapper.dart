import 'package:rickandmorty/external/mappers/author_mapper.dart';

import '../../domain/entitites/home_info_entity.dart';

class HomeInfoMapper {
  static HomeInfoEntity fromMap(Map<String, dynamic> map) {
    return HomeInfoEntity(
      userPicture: map['userPicture'],
      favoriteAuthors: map['favoriteAuthors']
          .map((authors) => AuthorMapper.fromMap(authors))
          .toList(),
      allBooks: map['allBooks']
          .map((books) => AuthorMapper.fromMap(books))
          .toList(),
      favoriteBooks: map['favoriteBooks']
          .map((books) => AuthorMapper.fromMap(books))
          .toList(),

    );
  }
}

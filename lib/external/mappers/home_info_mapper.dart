import 'package:rickandmorty/external/mappers/author_mapper.dart';

import '../../domain/entitites/home_info_entity.dart';
import 'book_mapper.dart';

class HomeInfoMapper {
  static HomeInfoEntity fromMap(Map<String, dynamic> map) {
    return HomeInfoEntity(
      userPicture: map['userPicture'],
      favoriteAuthors: (map['favoriteAuthors'] as Iterable)
          .map((authors) => AuthorMapper.fromMap(authors))
          .toList(),
      allBooks: (map['allBooks'] as Iterable)
          .map((books) => BookMapper.fromMap(books))
          .toList(),
      favoriteBooks: (map['favoriteBooks'] as Iterable)
          .map((books) => BookMapper.fromMap(books))
          .toList(),
    );
  }
}

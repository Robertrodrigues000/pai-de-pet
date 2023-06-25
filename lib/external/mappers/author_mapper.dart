import 'package:rickandmorty/domain/entitites/author_entity.dart';

class AuthorMapper {
  static AuthorEntity fromMap(Map<String, dynamic> map) {
    return AuthorEntity(
      name: map['name'],
      booksCount: map['booksCount'],
      id: map['id'],
      picture: map['picture'],
    );
  }
}

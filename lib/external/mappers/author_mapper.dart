import '../../domain/entitites/author_entity.dart';

class AuthorMapper {
  static AuthorEntity fromMap(Map<String, dynamic> map) {
    return AuthorEntity(
      name: map['name'],
      booksCount: map['booksCount'],
      picture: map['picture'],
    );
  }
}

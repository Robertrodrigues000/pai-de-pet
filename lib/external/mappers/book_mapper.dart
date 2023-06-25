import 'package:rickandmorty/domain/entitites/book_entity.dart';

class BookMapper {
  static BookEntity fromMap(Map<String, dynamic> map) {
    return BookEntity(
      name: map['name'],
      author: map['author']['name'],
      cover: map['cover'],
    );
  }
}

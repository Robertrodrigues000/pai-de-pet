import 'package:faker/faker.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';

class BookMapper {
  static BookEntity fromMap(Map<String, dynamic> map) {
    return BookEntity(
      id: map['id'],
      name: map['name'],
      author: map['author']['name'],
      cover: map['cover'],
      description: map['description'],
      isFavorite: map['isFavorite'],
    );
  }

  static BookEntity fake() {
    return BookEntity(
      author: faker.person.name(),
      cover: faker.image.image(),
      id: faker.randomGenerator.integer(10).toString(),
      name: faker.company.name(),
      description: faker.lorem.sentence(),
      isFavorite: faker.randomGenerator.boolean(),
    );
  }
}

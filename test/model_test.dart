import 'package:flutter_test/flutter_test.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';
import 'package:rickandmorty/external/mappers/book_mapper.dart';

void main() {
  test('Create a model from Json', () {
    final fake = BookMapper.fake();

    final json = {
      'id': fake.id,
      'name': fake.name,
      'author': {
        'name': fake.author,
      },
      'cover': fake.cover,
      'description': fake.description,
      'isFavorite': fake.isFavorite,
    };

    final automationData = BookMapper.fromMap(json);

    expect(automationData, isA<BookEntity>());
    expect(automationData, fake);
  });

  test('Create a fake model', () {
    final automationData = BookMapper.fake();

    expect(automationData, isA<BookEntity>());

    final other = BookMapper.fake();

    expect(other, isNot(automationData));
  });
}

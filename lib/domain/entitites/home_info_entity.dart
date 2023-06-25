import 'package:equatable/equatable.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';

import 'author_entity.dart';

class HomeInfoEntity extends Equatable {
  final String userPicture;
  final List<BookEntity> favoriteBooks;
  final List<AuthorEntity> favoriteAuthors;
  final List<BookEntity> allBooks;

  const HomeInfoEntity({
    required this.favoriteAuthors,
    required this.allBooks,
    required this.favoriteBooks,
    required this.userPicture,
  });

  @override
  List<Object> get props => [
        favoriteBooks,
        favoriteAuthors,
        allBooks,
        userPicture,
      ];
}

import 'package:equatable/equatable.dart';

import 'author_entity.dart';
import 'book_entity.dart';

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

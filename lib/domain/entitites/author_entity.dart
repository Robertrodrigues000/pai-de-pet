import 'package:equatable/equatable.dart';

class AuthorEntity extends Equatable {
  final String name;
  final String picture;
  final int? booksCount;

  const AuthorEntity({
    required this.picture,
    this.booksCount,
    required this.name,
  });

  @override
  List<Object?> get props => [
        name,
        picture,
        booksCount,
      ];
}

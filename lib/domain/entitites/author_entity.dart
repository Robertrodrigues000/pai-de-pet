import 'package:equatable/equatable.dart';

class AuthorEntity extends Equatable {
  final String id;
  final String name;
  final String picture;
  final int? booksCount;

  const AuthorEntity({
    required this.picture,
    this.booksCount,
    required this.name,
    required this.id,
  });

  @override
  List<Object?> get props => [
        name,
        picture,
        booksCount,
        id,
      ];
}

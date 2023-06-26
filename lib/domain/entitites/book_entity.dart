import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final String id;
  final String name;
  final String cover;
  final String author;
  final String? description;
  final bool? isFavorite;

  const BookEntity({
    required this.id,
    required this.name,
    required this.cover,
    required this.author,
    this.description,
    this.isFavorite,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        cover,
        author,
        description,
        isFavorite,
      ];
}

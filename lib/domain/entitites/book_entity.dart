import 'package:equatable/equatable.dart';

class BookEntity extends Equatable {
  final String name;
  final String cover;
  final String author;

  const BookEntity({
    required this.name,
    required this.cover,
    required this.author,
  });

  @override
  List<Object> get props => [
        name,
        cover,
        author,
      ];
}

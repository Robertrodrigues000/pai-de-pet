import 'package:flutter/material.dart';

import '../../../../core/theme/app_text.dart';
import '../../../../domain/entitites/book_entity.dart';
import 'category_chip_widget.dart';
import 'library_card.dart';

class LibrarySection extends StatelessWidget {
  final List<BookEntity> bookList;

  const LibrarySection({
    Key? key,
    required this.bookList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.sessionTitle('Biblioteca'),
        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              SizedBox(height: 20),
              CategoryChip(
                title: 'Todos',
                isSelected: true,
              ),
              CategoryChip(
                title: 'Romance',
                isSelected: false,
              ),
              CategoryChip(
                title: 'Aventura',
                isSelected: false,
              ),
              CategoryChip(
                title: 'Comédia',
                isSelected: false,
              ),
            ],
          ),
        ),
        Column(
          children: [
            ...bookList.map(
              (book) {
                return LibraryCard(
                  book: book,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}

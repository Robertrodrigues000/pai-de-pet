import 'package:flutter/material.dart';

import '../../../../core/theme/app_text.dart';
import 'category_chip_widget.dart';

class LibrarySection extends StatelessWidget {
  const LibrarySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.sessionTitle('Biblioteca'),
        Container(
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
      ],
    );
  }
}

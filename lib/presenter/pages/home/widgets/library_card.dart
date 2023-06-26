import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text.dart';

class LibraryCard extends StatelessWidget {
  final BookEntity? book;

  const LibraryCard({
    Key? key,
    this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Modular.to.pushNamed('/book/', arguments: {'bookId': book!.id}),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 48,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: const Border.fromBorderSide(
                    BorderSide(
                      color: AppColors.secondary,
                      width: 0.6,
                    ),
                  ),
                  color: AppColors.secondary,
                  image: book != null
                      ? DecorationImage(
                          image: NetworkImage(book!.cover),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  AppText.cadTitle(
                    book!.name,
                    maxLine: 2,
                  ),
                  const SizedBox(height: 5),
                  AppText.subtitle(book!.author),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

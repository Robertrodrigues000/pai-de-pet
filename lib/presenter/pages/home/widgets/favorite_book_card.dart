import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/core/theme/app_text.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';

import '../../../../core/theme/app_color.dart';

class FavoriteBookCard extends StatelessWidget {
  final BookEntity? book;

  const FavoriteBookCard({
    Key? key,
    this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Modular.to.pushNamed('/book/', arguments: {'bookId': book!.id}),
      child: SizedBox(
        width: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 136,
                height: 198,
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
            AppText.cadTitle(book!.name),
            AppText.subtitle(book!.author),
          ],
        ),
      ),
    );
  }
}

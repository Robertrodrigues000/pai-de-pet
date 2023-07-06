import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text.dart';
import '../../../../domain/entitites/author_entity.dart';

class FavoriteAuthorCard extends StatelessWidget {
  final AuthorEntity? author;

  const FavoriteAuthorCard({
    Key? key,
    this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 248,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 63,
              height: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: const Border.fromBorderSide(
                  BorderSide(
                    color: AppColors.primary,
                    width: 0.6,
                  ),
                ),
                color: AppColors.primary,
                image: author != null
                    ? DecorationImage(
                        image: NetworkImage(author!.picture),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.cadTitle(
                author!.name,
                maxLine: 2,
              ),
              const SizedBox(height: 5),
              AppText.subtitle('${author!.booksCount} livros'),
            ],
          ),
        ],
      ),
    );
  }
}

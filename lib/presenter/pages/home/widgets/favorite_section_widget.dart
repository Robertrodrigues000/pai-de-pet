import 'package:flutter/material.dart';

import '../../../../core/theme/app_text.dart';
import 'favorite_book_card.dart';

class FavoriteSectionWidget extends StatelessWidget {
  const FavoriteSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText.sessionTitle('Livros favoritos'),
              InkWell(
                child: AppText.seeMore('ver todos'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 262,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              FavoriteBookCard(),
              FavoriteBookCard(),
              FavoriteBookCard(),
              FavoriteBookCard(),
              FavoriteBookCard(),
            ],
          ),
        ),
      ],
    );
  }
}

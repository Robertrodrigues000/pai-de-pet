import 'package:flutter/material.dart';
import 'package:rickandmorty/core/theme/app_text.dart';

import '../../core/theme/app_color.dart';

class FavoriteBookCard extends StatelessWidget {
  const FavoriteBookCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: Colors.amber
                  // image: char.image
                  ),
            ),
          ),
          AppText.cadTitle('O duque e eu(Os Bridgertons Livro 1)'),
          AppText.subtitle('Julia Quin'),
        ],
      ),
    );
  }
}

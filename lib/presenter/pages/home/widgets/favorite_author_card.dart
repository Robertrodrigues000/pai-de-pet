import 'package:flutter/material.dart';
import 'package:rickandmorty/core/theme/app_text.dart';

import '../../../../core/theme/app_color.dart';

class FavoriteAuthorCard extends StatelessWidget {
  const FavoriteAuthorCard({
    Key? key,
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
                      color: AppColors.secondary,
                      width: 0.6,
                    ),
                  ),
                  color: AppColors.secondary
                  // image: char.image
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
              AppText.cadTitle('Connie Brockway'),
              const SizedBox(height: 5),
              AppText.subtitle('6 livros'),
            ],
          ),
        ],
      ),
    );
  }
}

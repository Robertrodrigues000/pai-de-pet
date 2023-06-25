
import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../core/theme/app_text.dart';

class LibraryCard extends StatelessWidget {
  const LibraryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              const SizedBox(height: 5),
              AppText.cadTitle('O duque e eu (Os Bridgertons Livro Novo 1)'),
              const SizedBox(height: 5),
              AppText.subtitle('Julia Quinn'),
            ],
          ),
        ],
      ),
    );
  }
}

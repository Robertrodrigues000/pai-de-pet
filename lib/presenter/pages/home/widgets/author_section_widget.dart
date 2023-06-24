import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rickandmorty/core/theme/app_color.dart';

import '../../../../core/theme/app_text.dart';
import 'category_chip_widget.dart';
import 'favorite_author_card.dart';
import 'library_section_widget.dart';

class AuthorsSectionWidget extends StatelessWidget {
  const AuthorsSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText.sessionTitle('Autores favoritos'),
                  InkWell(
                    child: AppText.seeMore('ver todos'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 69,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  FavoriteAuthorCard(),
                  FavoriteAuthorCard(),
                  FavoriteAuthorCard(),
                  FavoriteAuthorCard(),
                  FavoriteAuthorCard(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const LibrarySection(),
          ],
        ),
      ),
    );
  }
}

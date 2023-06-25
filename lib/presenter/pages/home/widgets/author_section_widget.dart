import 'package:flutter/material.dart';
import 'package:rickandmorty/domain/entitites/author_entity.dart';
import 'package:rickandmorty/domain/entitites/book_entity.dart';

import '../../../../core/theme/app_text.dart';
import 'favorite_author_card.dart';
import 'library_section_widget.dart';

class AuthorsSectionWidget extends StatelessWidget {
  final List<AuthorEntity>? authorList;
  final List<BookEntity>? bookList;

  const AuthorsSectionWidget({
    Key? key,
    this.authorList, 
    this.bookList,
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
                children: [
                  ...authorList?.map((author) {
                        return FavoriteAuthorCard(
                          author: author,
                        );
                      }) ??
                      [const FavoriteAuthorCard()]
                ],
              ),
            ),
            const SizedBox(height: 30),
            LibrarySection(
              bookList: bookList,
            ),
          ],
        ),
      ),
    );
  }
}

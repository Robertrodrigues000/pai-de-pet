import 'package:flutter/material.dart';
import 'package:rickandmorty/core/app_controller.dart';
import 'package:rickandmorty/presenter/pages/book/book_controller.dart';
import 'package:rickandmorty/presenter/widgets/bootom_navigation_widget.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/app_text.dart';
import '../../../domain/entitites/book_entity.dart';
import '../../widgets/loading_screen_widget.dart';

class BookPage extends StatefulWidget {
  final String bookId;

  const BookPage({super.key, required this.bookId});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends AppController<BookPage, BookController> {
  @override
  BookController createController() => BookController(bookId: widget.bookId);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<BookEntity?>(
      valueListenable: controller.bookListListenable,
      builder: (context, book, _) {
        return book == null
            ? const LoadingScreenWidget()
            : Scaffold(
                appBar: AppBar(
                  actions: const [Icon(Icons.more_vert)],
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                ),
                bottomNavigationBar: const BottomNavigationWidget(),
                extendBodyBehindAppBar: true,
                body: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondary,
                        image: DecorationImage(
                          image: NetworkImage(book.cover),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 300),
                        child: Material(
                          elevation: 8,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: AppText.cadTitle(book.name),
                                      ),
                                      book.isFavorite!
                                          ? const Icon(
                                              Icons.favorite,
                                              color: AppColors.secondary,
                                            )
                                          : const Icon(Icons.favorite_border)
                                    ],
                                  ),
                                ),
                                AppText.subtitle(book.author),
                                const SizedBox(height: 30),
                                AppText.description(book.description!),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}

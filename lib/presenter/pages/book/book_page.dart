import 'package:flutter/material.dart';
import 'package:rickandmorty/core/app_controller.dart';
import 'package:rickandmorty/presenter/pages/book/book_controller.dart';

class BookPage extends StatefulWidget {
  final String bookId;

  const BookPage({super.key, required this.bookId});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends AppController<BookPage, BookController> {
  @override
  BookController createController() => BookController(
    bookId: widget.bookId
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage("assets/images/bulb.jpg"),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: const Center(child: Text('Hello')) /* add child content here */,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../domain/entitites/book_entity.dart';

class LoginController extends ChangeNotifier {

  final bookListListenable = ValueNotifier<BookEntity?>(null);
  final scaffoldKey = GlobalKey<ScaffoldState>();

  LoginController(
   
  );

 
}

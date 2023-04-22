import 'package:flutter/material.dart';

abstract class AppController<TWidget extends StatefulWidget,
    TController extends ChangeNotifier> extends State<TWidget> {
  late TController _controller;

  TController createController();

  TController get controller => _controller;

  @override
  void initState() {
    super.initState();
    _controller = createController();
    controller.addListener(() => setState(() => {}));
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
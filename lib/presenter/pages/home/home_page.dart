import 'package:flutter/material.dart';
import 'package:rickandmorty/presenter/pages/home/home_controller.dart';

import '../../../core/app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.title = 'AppName'});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppController<HomePage , HomeController> {
  @override
  HomeController createController() => HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
  

}

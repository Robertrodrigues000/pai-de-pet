import 'package:flutter/material.dart';
import 'package:rickandmorty/presenter/pages/home/home_controller.dart';
import 'package:rickandmorty/presenter/widgets/char_card.dart';

import '../../../core/app_controller.dart';
import '../../../domain/entitites/char_entity.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends AppController<HomePage, HomeController> {
  @override
  HomeController createController() => HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: ValueListenableBuilder<List<CharEntity>>(
          valueListenable: controller.chartListListenable,
          builder: (context, charList, _) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...charList.map((char) => CharCard(char: char)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

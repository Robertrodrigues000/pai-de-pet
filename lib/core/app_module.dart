import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/usecases/get_char_usecase.dart';
import 'package:rickandmorty/presenter/pages/home/home_controller.dart';

import '../presenter/pages/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory(
          (i) => GetCharUsecase(charRepository: i.get()),
        ),
           Bind.factory(
          (i) => HomeController(getCharUsecase: i.get()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
      ];
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/usecases/get_char_usecase.dart';
import 'package:rickandmorty/infra/repositories/char_repository.dart';

import '../external/datasource/datasource.dart';
import '../domain/repositories/char_repository.dart';
import '../infra/datasource/char_datasource.dart';
import '../presenter/pages/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<IDatasource>(
          (i) => Datasource(),
        ),
        Bind.lazySingleton<ICharRepository>(
          (i) => CharRepository(charDatasource: i.get()),
        ),
        Bind.lazySingleton(
          (i) => GetCharUsecase(charRepository: i.get()),
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

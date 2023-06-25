import 'package:flutter_modular/flutter_modular.dart';
import 'package:rickandmorty/domain/usecases/get_home_info_usecase.dart';
import 'package:rickandmorty/infra/repositories/repository.dart';

import '../external/datasource/datasource.dart';
import '../domain/repositories/repository.dart';
import '../infra/datasource/datasource.dart';
import '../presenter/pages/home/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<IDatasource>(
          (i) => Datasource(),
        ),
        Bind.lazySingleton<IRepository>(
          (i) => Repository(datasource: i.get()),
        ),
        Bind.lazySingleton(
          (i) => GetHomeInfoUsecase(repository: i.get()),
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

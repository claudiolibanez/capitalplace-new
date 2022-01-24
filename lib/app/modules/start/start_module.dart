import 'package:flutter_modular/flutter_modular.dart';

// start
import 'package:capitalplace/app/modules/start/presenter/pages/start_page.dart';
import 'package:capitalplace/app/modules/start/presenter/stores/start_store.dart';

// home module
import 'package:capitalplace/app/modules/start/submodules/home/home_module.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StartStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const StartPage(),
      children: [
        ModuleRoute(
          '/home',
          module: HomeModule(),
          transition: TransitionType.noTransition,
        ),
      ],
    ),
  ];
}

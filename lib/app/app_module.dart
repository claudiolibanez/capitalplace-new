import 'package:flutter_modular/flutter_modular.dart';

// splash page
import 'package:capitalplace/app/pages/splash_page.dart';

// onboarding page
import 'package:capitalplace/app/pages/onboarding_page.dart';

// auth module
import 'package:capitalplace/app/modules/auth/auth_module.dart';

// start module
import 'package:capitalplace/app/modules/start/start_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const SplashPage(),
    ),
    ChildRoute(
      '/onboarding',
      child: (_, args) => const OnboardingPage(),
    ),
    ModuleRoute(
      '/auth',
      module: AuthModule(),
      transition: TransitionType.noTransition,
    ),
    ModuleRoute(
      '/start',
      module: StartModule(),
      transition: TransitionType.noTransition,
    ),
  ];
}

import 'package:flutter_modular/flutter_modular.dart';

// sign in
import 'package:capitalplace/app/modules/auth/presenter/pages/sign_in_page.dart';
import 'package:capitalplace/app/modules/auth/presenter/stores/sign_in_store.dart';

// sign in code
import 'package:capitalplace/app/modules/auth/presenter/pages/sign_in_code_page.dart';
import 'package:capitalplace/app/modules/auth/presenter/stores/sign_in_code_store.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SignInStore()),
    Bind.lazySingleton((i) => SignInCodeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/sign_in',
      child: (_, args) => const SignInPage(),
    ),
    ChildRoute(
      '/sign_in_code',
      child: (_, args) => const SignInCodePage(),
    ),
  ];
}

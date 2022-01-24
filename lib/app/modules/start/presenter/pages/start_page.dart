import 'package:capitalplace/app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// store
import 'package:capitalplace/app/modules/start/presenter/stores/start_store.dart';

class StartPage extends StatefulWidget {
  const StartPage({
    Key? key,
  }) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends ModularState<StartPage, StartStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColorConstants.primary,
        unselectedItemColor: AppColorConstants.primary.withOpacity(.5),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart,
            ),
            label: "Consultar",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
            ),
            label: "Investir",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}

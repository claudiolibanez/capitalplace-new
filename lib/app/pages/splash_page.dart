import 'package:flutter/material.dart';

// constants
import 'package:capitalplace/app/core/constants/app_constants.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((_) {
      Modular.to.navigate('onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImageConstants.capitalPlaceLogo,
          width: width * .4,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

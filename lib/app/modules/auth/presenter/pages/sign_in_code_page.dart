import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

// constants
import 'package:capitalplace/app/core/constants/app_constants.dart';

// store
import 'package:capitalplace/app/modules/auth/presenter/stores/sign_in_code_store.dart';

// widgets
import 'package:capitalplace/app/core/widgets/button_widget.dart';
import 'package:capitalplace/app/modules/auth/presenter/widgets/pin_number_widget.dart';

class SignInCodePage extends StatefulWidget {
  const SignInCodePage({
    Key? key,
  }) : super(key: key);

  @override
  _SignInCodePageState createState() => _SignInCodePageState();
}

class _SignInCodePageState
    extends ModularState<SignInCodePage, SignInCodeStore> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: AppColorConstants.primary,
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(
              Icons.arrow_back,
              color: AppColorConstants.white,
              size: 24.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          backgroundColor: AppColorConstants.primary,
          elevation: 0.0,
        ),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Digite o código",
                  style: AppTypographyConstants.heading.copyWith(
                    color: AppColorConstants.white,
                  ),
                ),
                const SizedBox(
                  height: 22.0,
                ),
                Text(
                  "Insira o código que enviamos para:",
                  style: AppTypographyConstants.body.copyWith(
                    color: AppColorConstants.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "+55 9 8445-5442",
                      style: AppTypographyConstants.body.copyWith(
                        color: AppColorConstants.white,
                      ),
                    ),
                    Text(
                      "Editar Número",
                      style: AppTypographyConstants.body.copyWith(
                        color: AppColorConstants.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 42.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    PinNumberWidget(
                      textInputAction: TextInputAction.next,
                    ),
                    PinNumberWidget(
                      textInputAction: TextInputAction.next,
                    ),
                    PinNumberWidget(
                      textInputAction: TextInputAction.next,
                    ),
                    PinNumberWidget(
                      textInputAction: TextInputAction.next,
                    ),
                    PinNumberWidget(
                      textInputAction: TextInputAction.next,
                    ),
                    PinNumberWidget(
                      textInputAction: TextInputAction.done,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 78.0,
                ),
                ButtonWidget(
                  title: "Reenviar código",
                  onPressed: () {},
                  side: const BorderSide(
                    width: 1.0,
                    color: AppColorConstants.secondary,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ButtonWidget(
                  title: "Próximo",
                  typography: AppTypographyConstants.button.copyWith(
                    color: AppColorConstants.primary,
                  ),
                  background: AppColorConstants.secondary,
                  onPressed: () => Modular.to.navigate('/start/home/'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

// constants
import 'package:capitalplace/app/core/constants/app_constants.dart';

// store
import 'package:capitalplace/app/modules/auth/presenter/stores/sign_in_store.dart';

import 'package:capitalplace/app/core/widgets/button_widget.dart';
import 'package:capitalplace/app/core/widgets/icon_button_widget.dart';
import 'package:capitalplace/app/core/widgets/input_widget.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends ModularState<SignInPage, SignInStore> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: AppColorConstants.primary,
        appBar: AppBar(
          leading: GestureDetector(
            child: const Icon(
              Icons.close,
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bem vindo!",
                  style: AppTypographyConstants.heading.copyWith(
                    color: AppColorConstants.white,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Text(
                  "Faça login em sua conta",
                  style: AppTypographyConstants.body.copyWith(
                    color: AppColorConstants.white,
                  ),
                ),
                const SizedBox(
                  height: 42.0,
                ),
                Observer(
                  builder: (_) {
                    return Column(
                      children: [
                        InputWidget(
                          label: "E-mail",
                          hint: "seuemail@email.com",
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          initialValue: store.email,
                          onChanged: store.setEmail,
                          errorText: store.errorEmail,
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        InputWidget(
                          label: "Senha",
                          hint: "************",
                          textInputAction: TextInputAction.send,
                          obscureText: !store.isPasswordVisible,
                          suffixIcon: IconButtonWidget(
                            iconData: store.isPasswordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 22.0,
                            color: AppColorConstants.white,
                            onTap: store.togglePasswordVisibility,
                          ),
                          initialValue: store.password,
                          onChanged: store.setPassword,
                          errorText: store.errorPassword,
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 18.0,
                ),
                SizedBox(
                  width: width,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Esqueceu a senha?",
                      style: AppTypographyConstants.link.copyWith(
                        color: AppColorConstants.secondary,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Observer(
                  builder: (_) {
                    return ButtonWidget(
                      title: "Entrar",
                      typography: AppTypographyConstants.button.copyWith(
                        color: AppColorConstants.primary,
                      ),
                      background: AppColorConstants.secondary,
                      isLoading: store.isLoading,
                      onPressed: () => store.handleSubmit().then((_) {
                        Modular.to.pushNamed('sign_in_code');

                        // ScaffoldMessenger.of(context).showSnackBar(
                        //   const SnackBar(content: Text("Logado com sucesso")),
                        // );
                      }).catchError((err) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(err.message)),
                        );
                      }),
                    );
                  },
                ),
                const SizedBox(
                  height: 22.0,
                ),
                SizedBox(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Não tem uma conta?",
                        style: AppTypographyConstants.body.copyWith(
                          color: AppColorConstants.white,
                        ),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Inscrever-se",
                          style: AppTypographyConstants.body.copyWith(
                            color: AppColorConstants.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

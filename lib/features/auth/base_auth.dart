import 'package:app/features/auth/sing_in_screen.dart';
import 'package:app/features/auth/sing_up_screen.dart';
import 'package:app/features/widgets/my_button.dart';
import 'package:app/features/widgets/my_text/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/text_button.dart';

abstract class BaseAuth extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late BuildContext context;

  BaseAuth({super.key});

  Widget welcomeText({required String welcomeText, String? descText}) {
    return descText == null
        ? Text(welcomeText, style: Theme.of(context).textTheme.displayLarge)
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(welcomeText,
                  style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(
                height: 12,
              ),
              Text(
                descText ?? "",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          );
  }

  MyButton submitButton(
      {required Widget widget,
      required Function onTap,
      required Color color,
      double width = 50}) {
    return MyButton(
      width: width,
      widget: widget,
      onTap: onTap,
      color: color,
    );
  }

  MyTextButton singInOrSignOut(
      {String? firstText, required String lastText, bool isLogin = false}) {
    return MyTextButton(
        firstText: firstText,
        lastText: lastText,
        onTapped: () {
          if (isLogin) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SigUpScreen()));
          } else {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SignScreen()));
            print("Logged called called");
          }
        });
  }

  MyTextInput emailInputField() {
    return MyTextInput(
      hintText: 'Email',
      isPassword: false,
      prefixIcon: Icons.email_outlined,
      controller: emailController,
    );
  }

  MyTextInput passwordInputField() {
    return MyTextInput(
      hintText: 'Password',
      isPassword: true,
      prefixIcon: Icons.lock_open,
      controller: passwordController,
    );
  }
}

import 'package:app/features/widgets/my_button.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(welcomeText,
                  style: Theme.of(context).textTheme.displayLarge),
              const SizedBox(
                height: 10,
              ),
              Text(descText ?? "",
                  style: Theme.of(context).textTheme.bodySmall),
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
      widget:widget,
      onTap: onTap,
      color: color,
    );
  }

  MyTextButton singInOrSignOut(
      {String? firstText, required String lastText, bool isLogin = true}) {
    return MyTextButton(
        firstText: firstText,
        lastText: lastText,
        onTapped: () {
          if (isLogin) {
            print("Register  called");
          } else {
            print("Logged called called");
          }
        });
  }




}

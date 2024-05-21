import 'package:app/features/auth/base_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/my_text/text_input.dart';

class SigUpScreen extends BaseAuth {
  SigUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    super.context = context;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(
                  flex: 1,
                ),
                welcomeText(
                    welcomeText: "TALOWADAAG",
                    descText:
                        "Halkan iska diwaan geli La wadaag fikirkaga shirkadaha ku jira appka Talowadaag si xad gudub la'aan ah."),
                const SizedBox(
                  height: 60,
                ),
                MyTextInput(
                  hintText: 'Email',
                  isPassword: false,
                  prefixIcon: Icons.email_outlined,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextInput(
                  hintText: 'Password',
                  isPassword: true,
                  prefixIcon: Icons.lock_open,
                  controller: passwordController,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

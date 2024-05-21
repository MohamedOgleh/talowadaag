import 'package:app/features/auth/base_auth.dart';
import 'package:app/features/widgets/my_text/text_input.dart';
import 'package:flutter/material.dart';

import '../widgets/text_button.dart';

class SignScreen extends BaseAuth {
  SignScreen({super.key});

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
                // Spacer(
                //   flex: 1,
                // ),
                const Spacer(
                  flex: 1,
                ),
                welcomeText(
                    welcomeText: "TALOWADAAG",
                    descText:
                        "La wadaag fikirkaga shirkadaha ku jira appka Talowadaag si xad gudub la'aan ah."),
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

                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyTextButton(
                      lastText: 'Passworkii ma ilowdey?',
                      onTapped: () {
                        print("Hello");
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                submitButton(
                  widget: Text(
                    'Sign in',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  onTap: () {},
                  color: Theme.of(context).primaryColor,
                  width: MediaQuery.of(context).size.width * 0.99,
                ),
                const SizedBox(
                  height: 30,
                ),
                // Text('Or continoue with',
                //     style: Theme.of(context)
                //         .textTheme
                //         .bodyLarge
                //         ?.copyWith(color: Colors.grey)),

                // const SizedBox(
                //   height: 10,
                // ),

                //     submitButton(
                //     widget: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Image.asset(
                //           'assets/google_logo.png',
                //           width: 20,
                //           height: 20,
                //         ),
                //         const SizedBox(
                //           width: 10,
                //         ),
                //         Text(
                //           'Continoue with Goolgle',
                //           style: Theme.of(context).textTheme.labelLarge,
                //         ),
                //       ],
                //     ),
                // onTap: () {},
                // color: Colors.red.shade700,
                // width: MediaQuery.of(context).size.width * 0.99,
                //     ),

                const Spacer(
                  flex: 1,
                ),

                singInOrSignOut(
                    firstText: 'I don\'t have an account?  ',
                    lastText: 'Register'),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

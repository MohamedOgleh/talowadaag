import 'package:app/features/auth/base_auth.dart';
import 'package:flutter/material.dart';

class SignScreen extends BaseAuth {
  SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    super.context = context;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeText(
                  welcomeText: "Soo dhawaw,",
                  descText:
                      "La wadaag fikirkaga shirkadaha ku jira appka Talowadaag si xad gudub la\'aan ah."),

              submitButton(
                buttonTitle: "Sign in",
                onTap: () {},
                color: Theme.of(context).primaryColor,
                width: MediaQuery.of(context).size.width * 0.99,
              ),
              const Spacer(),
              singInOrSignOut(
                  firstText: 'Don\'t have an account? ',
                  lastText: 'Register here')
            ],
          ),
        ),
      ),
    );
  }
}

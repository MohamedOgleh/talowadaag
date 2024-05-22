import 'package:app/features/auth/base_auth.dart';
import 'package:app/features/widgets/text_button.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends BaseAuth {
  ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    super.context = context;

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Forgot password",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                welcomeText(
                  welcomeText: "Forgot password",
                ),
                const SizedBox(
                  height: 10,
                ),
                MyTextButton(
                    firstText:
                        'Talowdaag will be send you the new password to your email make sure you enter valid email if you don\'t get the message press ',
                    lastText: 'Resend',
                    onTapped: () {}),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            emailInputField(),
            submitButton(
              widget: Text(
                'Reset password',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              onTap: () {},
              color: Theme.of(context).primaryColor,
              width: MediaQuery.of(context).size.width * 0.99,
            ),
          ],
        ),
      ),
    );
  }
}

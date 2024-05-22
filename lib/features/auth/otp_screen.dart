import 'package:app/features/auth/base_auth.dart';
import 'package:flutter/material.dart';

class OtpScreen extends BaseAuth {
  final String userEmail;

  OtpScreen({required this.userEmail, super.key});

  @override
  Widget build(BuildContext context) {
    super.context = context;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Otp",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            welcomeText(
                welcomeText: "OTP",
                descText:
                    "Fill the 4 small boxes the otp that Talowadaag were sent you to your email $userEmail"),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 60,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  width: 60,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  width: 60,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  width: 60,
                  child: TextFormField(
                    decoration:
                        const InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            submitButton(
              widget: Text(
                'Continue',
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

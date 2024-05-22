import 'package:app/features/auth/base_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/my_text/text_input.dart';

class SigUpScreen extends BaseAuth {
  SigUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    super.context = context;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Registration",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
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
                    descText: "Join with us read and give your idea."),
                const SizedBox(
                  height: 40,
                ),
                MyTextInput(
                  hintText: 'Full name',
                  isPassword: false,
                  controller: emailController,
                ),
                MyTextInput(
                  hintText: 'Contacts',
                  isPassword: false,
                  prefixIcon: Icons.phone_outlined,
                  controller: emailController,
                ),
                Row(
                  children: [
                    Text(
                      'Gender',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        radioButton(label: "Male", value: 'Male'),
                        const SizedBox(
                          width: 50,
                        ),
                        radioButton(label: "Female", value: 'Female'),
                      ],
                    ),
                  ],
                ),
                // dob(),
                emailInputField(),
                passwordInputField(),
                const SizedBox(
                  height: 10,
                ),
                submitButton(
                  widget: Text(
                    'Register',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  onTap: () {},
                  color: Theme.of(context).primaryColor,
                  width: MediaQuery.of(context).size.width * 0.99,
                ),
                const Spacer(),
                singInOrSignOut(
                    firstText: "I don't have an account? ",
                    lastText: "Login",
                    isLogin: false),
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

  Row radioButton({
    required String label,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Radio(
          value: value,
          groupValue: "gander",
          onChanged: (value) {
            print("My value is $value");
          },
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  Column dob() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Date of brith"),
        // DropdownButton(items: [], onChanged: onChanged)
      ],
    );
  }
}

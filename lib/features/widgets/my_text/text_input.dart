import 'package:app/features/widgets/my_text/my_text_input_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyTextInput extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String hintText;
  final String? labelText;

  final bool isPassword;

  final String? Function(String?)? validator;

  const MyTextInput({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    this.labelText,
    required this.isPassword,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PasswordVisibilityCubit(),
      child: BlocBuilder<PasswordVisibilityCubit, PasswordVisibilityState>(
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            child: TextFormField(
              obscureText: !state.isPasswordVisible,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
                suffixIcon: isPassword
                    ? IconButton(
                        icon: Icon(
                          state.isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          context
                              .read<PasswordVisibilityCubit>()
                              .togglePasswordVisibility();
                        },
                      )
                    : null,
              ),
              validator: validator,
            ),
          );
        },
      ),
    );
  }
}

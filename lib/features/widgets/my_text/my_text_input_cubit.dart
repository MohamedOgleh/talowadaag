import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'my_text_input_state.dart';

class PasswordVisibilityCubit extends Cubit<PasswordVisibilityState> {
  PasswordVisibilityCubit() : super(PasswordVisibilityState(isPasswordVisible: false));

  void togglePasswordVisibility() {
    emit(PasswordVisibilityState(isPasswordVisible: !state.isPasswordVisible));
  }
}
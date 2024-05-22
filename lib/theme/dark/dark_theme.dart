import 'package:app/theme/green/green_input_theme.dart';
import 'package:app/theme/text_theme.dart';
import 'package:flutter/material.dart';

import 'dark_input_theme.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blue.shade700,
  fontFamily: 'roboto',
  inputDecorationTheme: darkInputTheme,
  textTheme: textTheme.copyWith(
    bodyLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ), //Rich text first text
    bodyMedium: TextStyle(
      fontSize: 14,
      color: Colors.blue.shade400,
      fontWeight: FontWeight.w500,
    ), //Rich text last text
    bodySmall: TextStyle(
      fontSize: 14,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w500,
    ), //Welcome text description
  ),

  radioTheme: RadioThemeData(

  ),
);

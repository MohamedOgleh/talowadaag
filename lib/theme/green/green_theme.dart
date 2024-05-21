import 'package:app/theme/green/green_input_theme.dart';
import 'package:app/theme/text_theme.dart';
import 'package:flutter/material.dart';

final greenTheme = ThemeData(
  primaryColor: Colors.teal,
  fontFamily: 'roboto',
  inputDecorationTheme: inputTheme,
  textTheme: textTheme.copyWith(
    bodyLarge: TextStyle(
      fontSize: 14,
      color: Colors.teal,
      fontWeight: FontWeight.w500,
    ),
  ),
);

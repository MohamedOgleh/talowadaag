import 'package:app/theme/green/green_input_theme.dart';
import 'package:app/theme/text_theme.dart';
import 'package:flutter/material.dart';

final greenTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.teal,
  fontFamily: 'roboto',
  inputDecorationTheme: inputTheme,
  textTheme: textTheme.copyWith(
    bodyLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ), //Rich text first text
    bodyMedium: const TextStyle(
      fontSize: 14,
      color: Colors.teal,
      fontWeight: FontWeight.w500,
    ), //Rich text last text
    bodySmall: TextStyle(
      fontSize: 14,
      color: Colors.grey.shade700,
      fontWeight: FontWeight.w500,
    ),
  ),
);

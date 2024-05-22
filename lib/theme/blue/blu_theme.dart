import 'package:app/theme/blue/blue_input_theme.dart';
import 'package:app/theme/green/green_input_theme.dart';
import 'package:app/theme/text_theme.dart';
import 'package:flutter/material.dart';

final blueTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue.shade700,
  fontFamily: 'roboto',
  inputDecorationTheme: inputBlueTheme,
  textTheme: textTheme.copyWith(
    bodyLarge: const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ), //Rich text first text
    bodyMedium:   TextStyle(
      fontSize: 14,
      color: Colors.blue.shade700,
      fontWeight: FontWeight.w500,
    ), //Rich text last text
    bodySmall: TextStyle(
      fontSize: 14,
      color: Colors.grey.shade700,
      fontWeight: FontWeight.w500,
    ),
  ),

  // radioTheme: RadioThemeData(
  //
  //   fillColor: MaterialStateColor.resolveWith((states) => if())
  // ),

);

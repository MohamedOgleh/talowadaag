import 'package:app/features/auth/sing_in_screen.dart';
import 'package:app/features/auth/sing_up_screen.dart';
import 'package:app/theme/blue/blu_theme.dart';
import 'package:app/theme/dark/dark_theme.dart';
import 'package:app/theme/green/green_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: greenTheme,
        darkTheme: darkTheme,
        home: SignScreen());
  }
}

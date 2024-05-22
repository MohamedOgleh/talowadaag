import 'package:flutter/material.dart';

final inputTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
  prefixIconColor: Colors.teal,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.grey),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.teal),
  ),
);

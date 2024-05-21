import 'package:flutter/material.dart';

final darkInputTheme = InputDecorationTheme(
  contentPadding: const EdgeInsets.symmetric(vertical: 10),
  hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
  prefixIconColor: Colors.grey.shade100,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.grey),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Colors.blue.shade700),
  ),
);

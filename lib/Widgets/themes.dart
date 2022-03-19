import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData get darkTheme => ThemeData(brightness: Brightness.dark);
}

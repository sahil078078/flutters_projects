import 'package:flutter/material.dart';
import 'package:flutters_projects/Widgets/drawer.dart';
import 'package:flutters_projects/Widgets/themes.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Catelog App',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
          drawer: const MyDrawer(),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutters_projects/Widgets/drawer.dart';
import 'package:flutters_projects/Widgets/themes.dart';
import 'package:flutters_projects/models/catelog.dart';

import 'MyBodyDesign.dart';

void main() {
  const int days = 30;
  const String name = 'Sahil';
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Catelog App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        drawer: const MyDrawer(),
        body: MyBody(),
      ),
    ),
  );
}

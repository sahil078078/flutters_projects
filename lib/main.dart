import 'package:flutter/material.dart';
import 'package:flutters_projects/Widgets/drawer.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          drawer: const MyDrawer(),
        ),
      ),
    ),
  );
}

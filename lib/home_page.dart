import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'MyBodyDesign.dart';
import 'Widgets/drawer.dart';
import 'Widgets/themes.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;
  String name = 'Sahil';
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString('assets/files/catelog.json');
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    print(productsData);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}

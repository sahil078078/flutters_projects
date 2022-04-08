import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/destination_carousel.dart';

class MyHomeScreen extends StatefulWidget {
  MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  int _selectedIndex = 0;

  final List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking,
    FontAwesomeIcons.city
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        log(_selectedIndex.toString());
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xffe7ecee).withOpacity(0.8),
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xffb4c1c4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                "What Would You Like To Find ?",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList(),
            ),
            const SizedBox(height: 20.0),
            DestinationCarousel(),
          ],
        ),
      ),
    );
  }
}

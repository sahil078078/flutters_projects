import 'package:flutter/material.dart';

import 'calculator_design.dart';

class MyCalculator extends StatelessWidget {
  const MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white70,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Calculator',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.black,
            elevation: 0.0,
          ),
          body: CalculatorDesign(),
        ),
      ),
    );
  }
}

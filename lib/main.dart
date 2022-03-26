import 'package:flutter/material.dart';
import 'package:flutters_projects/urk_launcher/whatsapp_url_launcher.dart';
import 'package:flutters_projects/urk_launcher/whatsapp_url_launcher2.dart';
import 'package:flutters_projects/urk_launcher/whatsapp_url_launcher3.dart';
import 'package:flutters_projects/urk_launcher/whatsapp_url_launcher4.dart';

import 'FlutterTutorial_LayoutBasics_26_March_2022/SignIn/signin_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracker',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const SignInPage(),
    );
  }
}

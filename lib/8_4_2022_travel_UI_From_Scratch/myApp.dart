import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters_projects/4_4_2022_Flutter_Chat_UI_Tutorial/chat_home_page.dart';

import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff3ebace),
        accentColor: const Color(0xffd8ecf1),
        scaffoldBackgroundColor: const Color(0xfff3f5f7),
      ),
      home: MyHomeScreen(),
    );
  }
}

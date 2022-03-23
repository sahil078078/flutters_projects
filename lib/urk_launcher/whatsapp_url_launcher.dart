import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyUrlLauncher extends StatefulWidget {
  const MyUrlLauncher({Key? key}) : super(key: key);

  @override
  State<MyUrlLauncher> createState() => _MyUrlLauncherState();
}

class _MyUrlLauncherState extends State<MyUrlLauncher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        elevation: 0.0,
        title: const Text('URL Launcher'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            launchWhatsApp(phone: 918488027522, message: 'Hello  How Are You?');
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.orange,
          textColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          highlightColor: Colors.green,
          child: const Text(
            'Place your Order',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  void launchWhatsApp({required int phone, required String message}) async {
    String url() {
      if (Platform.isAndroid) {
        return "https://wa.me/$phone/?text=${Uri.parse(message)}";
      } else {
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }
}

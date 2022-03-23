import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';

class MyUrlLauncher2 extends StatefulWidget {
  const MyUrlLauncher2({Key? key}) : super(key: key);

  @override
  State<MyUrlLauncher2> createState() => _MyUrlLauncher2State();
}

class _MyUrlLauncher2State extends State<MyUrlLauncher2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: InkWell(
                child: Image.asset('assets/images/whatsapp.png'),
                onTap: () {
                  launchWhatsApp();
                },
              ),
            ),
            const SizedBox(height: 10),
            const Text('Send Message',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
          ],
        ),
      ),
    );
  }

  launchWhatsApp() {
    FlutterLaunch.launchWhatsapp(phone: '929549458754', message: 'Hello?');
  }
}

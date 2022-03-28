import 'package:flutter/material.dart';

import '../common_widget/custom_raised_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 48.0),
          CustomRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/images/google.png', height: 30),
                const Text(
                  'sign In With Google',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                    opacity: 0.0,
                    child: Image.asset('assets/images/google.png', height: 30)),
              ],
            ),
            color: Colors.white,
            borderRadius: 4.0,
            onPressed: () {},
            height: 50.0,
          ),
          const SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/facebook.png',
                  height: 30,
                  color: Colors.white,
                ),
                const Text(
                  'sign In With FaceBook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Opacity(
                  opacity: 0.0,
                  child: Image.asset(
                    'assets/images/facebook.png',
                    height: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            color: const Color(0xff334d92),
            borderRadius: 4.0,
            onPressed: () {},
            height: 50.0,
          ),
          const SizedBox(height: 8.0),
          CustomRaisedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/gmail.png', height: 30),
                const SizedBox(width: 85),
                const Text(
                  'sign In With Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            color: Colors.teal.shade700,
            borderRadius: 4,
            onPressed: () {},
            height: 50,
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Or',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          CustomRaisedButton(
            child: const Text(
              'Go Anonymous',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15,
              ),
            ),
            color: Colors.lime,
            borderRadius: 4.0,
            onPressed: () {},
            height: 50.0,
          ),
        ],
      ),
    );
  }
}

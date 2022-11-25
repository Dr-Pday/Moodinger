import 'package:flutter/material.dart';
import 'package:instagram/constats/colors.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('assets/images/switchscreen-background.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 63, top: 132),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'dont have an account?',
                  style: TextStyle(fontSize: 16, color: grey),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'sign up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:instagram/screens/switch_account_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwitchAccountScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff1C1F2E),
        image: DecorationImage(
          opacity: 0.4,
          repeat: ImageRepeat.repeat,
          image: AssetImage(
            'assets/images/pattern.png',
          ),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80.0),
                child: Image(
                  image: AssetImage(
                    'assets/images/Startlogo.png',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Erfano',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

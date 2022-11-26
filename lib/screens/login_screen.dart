import 'package:flutter/material.dart';
import 'package:instagram/constats/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FocusNode texfieldChecker = FocusNode();

  FocusNode texfieldChecker2 = FocusNode();

  @override
  void initState() {
    super.initState();
    texfieldChecker.addListener(() {
      setState(() {});
    });
    texfieldChecker2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(50, 58, 153, 1),
                              Color.fromRGBO(249, 139, 252, 1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 0,
                      right: 0,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/rocket2.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
            child: Container(
              height: 446,
              color: backgroundBlue,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text('Sign in to',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'GB',
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: AssetImage('assets/images/minilogo1.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: 36),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 44.0),
                      child: TextField(
                        focusNode: texfieldChecker,
                        cursorColor: sorkhabi,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: sorkhabi),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          hintText: 'Erfan@onagh.com',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: texfieldChecker.hasFocus
                                  ? sorkhabi
                                  : Colors.white,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 44.0),
                      child: TextField(
                        focusNode: texfieldChecker2,
                        cursorColor: sorkhabi,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: sorkhabi),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 3, color: grey),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          hintText: 'Enter your Password',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: texfieldChecker2.hasFocus
                                  ? sorkhabi
                                  : Colors.white,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    SizedBox(
                      width: 129,
                      height: 46,
                      child: ElevatedButton(
                        style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {},
                        child: Text('Sign in'),
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'dont have an account?',
                          style: TextStyle(
                              fontSize: 16, color: grey, fontFamily: 'GB'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'sign up',
                            style: TextStyle(
                              fontFamily: 'GB',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    texfieldChecker.dispose();
    texfieldChecker2.dispose();
  }
}

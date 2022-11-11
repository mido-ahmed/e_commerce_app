import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      print(DateTime.now());
      Navigator.pushNamed(context, '/Login');
    });
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/Images/logo2.png'),
          radius: 90,
        ),
      ),
    );
  }
}

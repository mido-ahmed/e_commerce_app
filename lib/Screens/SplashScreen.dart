import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
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

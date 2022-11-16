import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:e_commerce_app/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 5000), () async {
      final prefs = await SharedPreferences.getInstance();
      final accesstoken = await prefs.get('user_access_token');
      if (accesstoken == null) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return LoginScreen();
        }), (route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return HomeScreen();
        }), (route) => false);
      }
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

import 'package:e_commerce_app/Screens/SplashScreen.dart';
import 'package:e_commerce_app/Screens/route_generator.dart';
import 'package:flutter/material.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/SignInScreens.dart';
import 'Screens/HomeScreen.dart';

//youtube channels
//flutter package+
//boring show top takeaways
//debugging flutter

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      //darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
/*
* Sql
* 1-sqflite
* 2-shared preference--> key : value
* 3-Hive
* */
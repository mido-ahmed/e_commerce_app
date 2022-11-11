import 'package:e_commerce_app/Screens/AccountScreen.dart';
import 'package:e_commerce_app/Screens/ExploreScreen.dart';
import 'package:e_commerce_app/Screens/ItemsScreen.dart';
import 'package:e_commerce_app/Screens/OfferScreen.dart';
import 'package:e_commerce_app/Screens/SplashScreen.dart';
import 'package:e_commerce_app/Screens/flashsaleScreen.dart';
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
      routes: {
        '/Login': (context) => LoginScreen(),
        '/Signin': (context) => SigninScreen(),
        '/home': (context) => HomeScreen(),
        '/account': (context) => AccountScreen(),
        '/explore': (context) => ExploreScreen(),
        '/offer': (context) => OfferScreen(),
        '/items': (context) => ItemScreen(),
        '/flash_sale': (context) => FlashSale_Sceen(),
      },
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

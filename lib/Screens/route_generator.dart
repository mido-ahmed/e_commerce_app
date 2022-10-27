import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:e_commerce_app/Screens/LoginScreen.dart';
import 'package:e_commerce_app/Screens/OfferScreen.dart';
import 'package:flutter/material.dart';
 // import 'package:routing_tutorial/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/second':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => OfferScreen());
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route <dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_){
      return Scaffold(
       body: HomeScreen(),
        );
    });
  }
}
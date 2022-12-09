import 'package:e_commerce_app/Screens/AccountScreen.dart';
import 'package:e_commerce_app/Screens/ExploreScreen.dart';
import 'package:e_commerce_app/Screens/ItemsScreen.dart';
import 'package:e_commerce_app/Screens/OfferScreen.dart';
import 'package:e_commerce_app/Screens/SplashScreen.dart';
import 'package:e_commerce_app/Screens/category_product_screen.dart';
import 'package:e_commerce_app/Screens/flashsaleScreen.dart';
import 'package:e_commerce_app/Screens/route_generator.dart';
import 'package:e_commerce_app/Screens/single_product_screen.dart';
import 'package:e_commerce_app/cubit/product_cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/SignInScreens.dart';
import 'Screens/HomeScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => ProductCubit())],
      child: MaterialApp(
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
          '/single_product': (context) => SingleProductScreen(),
        },
        onGenerateRoute: RouteGenerator.generateRoute,
        //darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:e_commerce_app/Screens/Navigation.dart';
import 'package:e_commerce_app/Screens/SignInScreens.dart';
import 'package:e_commerce_app/themes/Colors.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //postman function to post data and print response
    void login() async {
      try {
        final response = await Dio()
            .post('https://api.escuelajs.co/api/v1/auth/login', data: {
          "email": emailcontroller.text,
          "password": passcontroller.text
        });
        final accesstoken = response.data['access_token'];
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('access_token', accesstoken);
        final access = await prefs.get('access_token');
        print("My access token is $access");

        Navigator.of(context).pushNamed('/home', arguments: 'hello');
        print(response);
      } on DioError catch (e) {
        print("This is an error :${e.response}");
        if (e.response!.statusCode == 400) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Your Should Enter Valid Email and Password"),
            backgroundColor: Colors.redAccent,
          ));
        }
      }
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Images/logo2.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Welcome to Souq",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Sign in to continue"),
                  SizedBox(
                    height: 10,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          minLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Email";
                            } else if (value.contains("@gmail.com") == false &&
                                value.isNotEmpty) {
                              return "No way Your email very weak or missing something";
                            } else if (value.contains("@gmail.com") == true &&
                                value.isNotEmpty) {
                              return null;
                            }
                          },
                          controller: emailcontroller,
                          decoration: InputDecoration(
                              hintText: "Your Mail",
                              prefixIcon: Icon(Icons.mail),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Password";
                            } else if (value.length < 10) {
                              return "No way Your Password vary weak";
                            } else {
                              return null;
                            }
                          },
                          controller: passcontroller,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Your Password",
                              prefixIcon: Icon(Icons.lock),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      width: 375,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5)),
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              login();
                              //toast package in net to search
                              print(emailcontroller.text);
                              print(passcontroller.text);
                            }
                          },
                          child: Text("Sign in"))),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 375,
                      child: SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 375,
                      child: SignInButton(Buttons.Facebook, onPressed: () {})),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 375,
                      child: SignInButton(
                        Buttons.Twitter,
                        onPressed: () {},
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(onPressed: () {}, child: Text("Forget Password?")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do Not Have Account?"),
                      GestureDetector(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return SigninScreen();
                              }));
                            },
                            child: Text("Register")),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

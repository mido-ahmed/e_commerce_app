import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:e_commerce_app/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class SigninScreen extends StatelessWidget {
  final fullnameController = TextEditingController();
  final mailController = TextEditingController();
  final passController = TextEditingController();
  final passControllertwo = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    void Signin() async {
      try {
        final response =
            await Dio().post('https://api.escuelajs.co/api/v1/users/', data: {
          "name": fullnameController.text,
          "email": mailController.text,
          "password": passController.text,
          "avatar": "https://api.lorem.space/image/face?w=640&h=480"
        });
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return LoginScreen();
        }));
        print(response);
      } on DioError catch (e) {
        print("This is an error :${e.response}");
        if (e.response!.statusCode == 400) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Your Should Enter Valid Name Or Email Or Password"),
            backgroundColor: Colors.redAccent,
          ));
        }
      }
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/Images/logo2.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lets Get Started",
                    style: TextStyle(
                        color: Color(0xff223263),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Create new Account"),
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
                              return "Please Enter your Name";
                            }
                            return null;
                          },
                          controller: fullnameController,
                          decoration: InputDecoration(
                              hintText: "Your Name",
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          minLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Name";
                            } else if (value.contains("@gmail.com") == false &&
                                value.isNotEmpty) {
                              return ("Missing '@gmail.com'");
                            }
                            return null;
                          },
                          controller: mailController,
                          decoration: InputDecoration(
                              hintText: "Your Mail",
                              prefixIcon: Icon(Icons.mail_outline_outlined),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          minLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Password";
                            } else if (value.length < 10) {
                              return "No way Your Password vary weak";
                            }
                            return null;
                          },
                          controller: passController,
                          decoration: InputDecoration(
                              hintText: "Your Password",
                              prefixIcon: Icon(Icons.lock),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          minLines: 1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Enter your Password";
                            } else if (value.length < 10) {
                              return "No way Your Password vary weak";
                            }
                            return null;
                          },
                          controller: passControllertwo,
                          decoration: InputDecoration(
                              hintText: "Your Password Again",
                              prefixIcon: Icon(Icons.lock),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 375,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (passController.text ==
                                  passControllertwo.text) {
                                Signin();
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                      "You Should Enter Two Passwords Equal"),
                                  backgroundColor: Colors.redAccent,
                                ));
                              }
                              print(fullnameController.text);
                              print(mailController.text);
                              print(passController.text);
                              print(passControllertwo.text);
                            }
                          },
                          child: Text("Sign in"))),
                  Divider(height: 2),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?"),
                      GestureDetector(
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                return HomeScreen();
                              }));
                            },
                            child: Text("SignUp")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

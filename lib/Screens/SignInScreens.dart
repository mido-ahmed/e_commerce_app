import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SigninScreen extends StatelessWidget {
 final fullnameController = TextEditingController();
 final mailController = TextEditingController();
 final passController = TextEditingController();
 final GlobalKey<FormState> _formKey =GlobalKey<FormState>();

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      radius: 75,
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
                        textField(
                          Text: 'Full Name',
                          controller: TextEditingController(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                          Text: 'Your Mail',
                          controller: TextEditingController(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                          Text: 'Your Password',
                          controller: TextEditingController(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        textField(
                          Text: 'Password Again',
                          controller: TextEditingController(),
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
                            if(!_formKey.currentState!.validate()){
                              return ;
                            }
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                              return HomeScreen();
                            }));
                            print(fullnameController.text);
                            print(mailController.text);
                            print(passController.text);
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

class textField extends StatelessWidget {
  const textField({
    Key? key,
    required this.Text, required this.controller,
  }) : super(key: key);
  final String Text;
  final TextEditingController controller ;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value){
        if(value!.isNotEmpty && value.length>9){
          return null ;
        }else if(value.length<9&&value.isNotEmpty){
          return "Short Input";
        }else{
          return "Please Enter your Info";
        }
      },
      decoration: InputDecoration(
          hintText: Text,
          prefixIcon: Icon(Icons.person),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white))),
    );
  }
}

import 'package:e_commerce_app/themes/Colors.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 25),
              child: Text(
                "Account",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            ListTitleWidget(text: "Profile", icon: Icon(Icons.person_outline)),
            ListTitleWidget(text: "Order", icon: Icon(Icons.backpack_outlined)),
            ListTitleWidget(
                text: "Address", icon: Icon(Icons.location_on_outlined)),
            ListTitleWidget(text: "Payment", icon: Icon(Icons.payment)),
          ],
        ),
      ),
    );
  }
}

class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("$text clicked");
      },
      child: ListTile(
        title: Text(text),
        leading: icon,
        iconColor: AppColors.cyanColor,
      ),
    );
  }
}

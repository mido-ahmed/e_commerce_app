import 'package:e_commerce_app/themes/Colors.dart';
import 'package:flutter/material.dart';

class ScaffoldGlobalWidget extends StatelessWidget {
  final String title;
  final Widget ladingIcon;
  final Widget body;

  const ScaffoldGlobalWidget({
    Key? key,
    required this.title,
    required this.ladingIcon,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: ladingIcon,
        ),
      ),
      body: body,
    );
  }
}

import 'package:flutter/material.dart';

class circleRow {
  String urlImage;

  String text;

  circleRow({required this.urlImage, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 35,
          child: Container(
              child: Image.asset(
            urlImage,
            fit: BoxFit.cover,
          )),
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

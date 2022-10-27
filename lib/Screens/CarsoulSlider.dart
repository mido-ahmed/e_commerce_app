import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../themes/Colors.dart';

class carsolSlider extends StatefulWidget {
  @override
  State<carsolSlider> createState() => _carsolSliderState();
}


class _carsolSliderState extends State<carsolSlider> {
  List<Map>Items=[
    {
      "Name":"Product one",
      "Price":"231",
      "offer":"23%",
      "img":"https://5.imimg.com/data5/YC/GV/XN/ANDROID-83761084/product-jpeg-500x500.jpg"
    },  {
      "Name":"Product two",
      "Price":"231",
      "offer":"23%",
      "img":"https://5.imimg.com/data5/YC/GV/XN/ANDROID-83761084/product-jpeg-500x500.jpg"
    },  {
      "Name":"Product three",
      "Price":"231",
      "offer":"23%",
      "img":"https://5.imimg.com/data5/YC/GV/XN/ANDROID-83761084/product-jpeg-500x500.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: Items.length,
          itemBuilder: (BuildContext context , int index){
        return GestureDetector(
          onTap: (){
            print("Item Clicked");
          },
          child: Container(
            width: 150,
            height: 150,
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    Items[index]["img"],
                    fit: BoxFit.fitWidth,
                    width: 105,
                    height: 105,
                  ),
                  Text(
                    "${Items[index]["Name"]}",
                    maxLines: 2,
                  ),
                  Text(
                    "\$ ${Items[index]["Price"]}",
                    style: TextStyle(color: AppColors.cyanColor),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "\$ ${Items[index]["Price"]}",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.grayColor),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        "${Items[index]["offer"]}",
                        style: TextStyle(color: Colors.red),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
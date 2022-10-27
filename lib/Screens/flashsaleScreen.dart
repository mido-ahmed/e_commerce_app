import 'package:e_commerce_app/themes/Colors.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class FlashSale_Sceen extends StatelessWidget {
  const FlashSale_Sceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return HomeScreen();
                      }));
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                Text(
                  "Super Flash Sale",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, bottom: 10),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
          Divider(),
          Stack(
            children: [
              Image.asset('assets/Images/coverShoes.png' , ),
              ListTile(
                title: Text("Super Flash Sale",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: AppColors.cyanColor)),
                subtitle: Text("50% Off",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: AppColors.cyanColor)),
                mouseCursor: MouseCursor.defer,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130 , left: 10),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5)),
                      child: Card(
                        color: AppColors.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "08",
                            style: TextStyle(color: AppColors.blackColor),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: AppColors.whiteColor
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5)),
                      child: Card(
                        color: AppColors.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "34",
                            style: TextStyle(color: AppColors.blackColor),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: AppColors.whiteColor
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(5)),
                      child: Card(
                        color: AppColors.whiteColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "52",
                            style: TextStyle(color: AppColors.blackColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}

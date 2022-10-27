import 'package:e_commerce_app/Screens/ItemsScreen.dart';
import 'package:e_commerce_app/Screens/LoginScreen.dart';
import 'package:e_commerce_app/themes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'flashsaleScreen.dart';
// import 'package:icon/icon.dart';
// import 'package:icon_forest/icon_forest.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

//flex widgets => Row and Columns widget
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  int currentIndex = 0;
  final Screens=[

  ];
  final List urlImages = [
    'https://5.imimg.com/data5/YC/GV/XN/ANDROID-83761084/product-jpeg-500x500.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7Z1a_U0L8xzCjmn08SmftFq5HQ8e7PEcKb8KvTwnsMjhQhMeBXP6N_6DiGOzSx1CUQl4&usqp=CAU',
    'https://5.imimg.com/data5/ANDROID/Default/2021/11/ZR/MZ/OQ/33805497/product-jpeg-500x500.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZvB4HDGdOnjbB9JwG9qaUsHG_4NXeaQiFyIFZ7oUM8ciCWjVdonv8O-y2APtoOZwlLvQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLHknV7V67Z-tOdrqpyzrNDIBnbztwHW1JgEIKyCsICNzC8EQSqzTcJqf5prZVylnnKsg&usqp=CAU',
    'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/56/111191/1.jpg?8028',
    'https://ae01.alicdn.com/kf/HTB19P5XKv5TBuNjSspmq6yDRVXaf/BomKinta-Hot-Light-Running-Shoes-White-Sneakers-Men-Gym-Sport-Shoes-Male-Breathable-chaussure-sport-homme.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSg6Mi6Kk838PWnkSRww1EoqFZON88BVroGsUjMX65W2sd23YpPycx7ZqSTI5LQuMMf_o&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    Widget buildImage(String urlImage, int index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 1),
          color: Colors.grey,
          width: double.infinity,
          child: Image.network(
            urlImage,
            fit: BoxFit.fill,
          ),
        );
    Widget buildIndicator() => AnimatedSmoothIndicator(
        axisDirection: Axis.horizontal,
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ScrollingDotsEffect(
          fixedCenter: true,
          spacing: 8.0,
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: AppColors.cyanColor,
        ));
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(5),
          child: ListView(scrollDirection: Axis.vertical, children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.671,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.cyanColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: AppColors.grayColor,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_active,
                          color: AppColors.grayColor,
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Divider(),
            SizedBox(
              height: 3,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlimage = urlImages[index];
                      return buildImage(urlimage, index);
                    },
                    options: CarouselOptions(
                      height: 250,
                      reverse: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  buildIndicator(),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Category"),
                        TextButton(
                            onPressed: () {}, child: Text("More Category")),
                      ],
                    ),
                      SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          circle_avatar_components(
                              urlImage: 'assets/Images/Group2.png',
                              text: 'Man Shirt'),
                          SizedBox(width: 10),
                          circle_avatar_components(
                              urlImage: 'assets/Images/Group.png', text: 'Dress'),
                          SizedBox(width: 10),
                          circle_avatar_components(
                              urlImage: 'assets/Images/Group3.png',
                              text: 'man Equipment'),
                          SizedBox(width: 10),
                          circle_avatar_components(
                              urlImage: 'assets/Images/Group5.png',
                              text: 'Woman Bag'),
                          SizedBox(width: 10),
                          circle_avatar_components(
                              urlImage: 'assets/Images/Group4.png',
                              text: 'Man Shoes'),
                          SizedBox(width: 10),
                        ],
                      ),
                    ),
                    // SizedBox(
                    //   height: 9,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Flash Sale"),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return FlashSale_Sceen();
                              }));
                            },
                            child: Text("See More")),
                      ],
                    ),
                      SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          card_components(
                              urlImage:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqfRq03XIpz7IJfj19gk3YMtIC7AC3_lIvzA&usqp=CAU',
                              new_price: '299,43',
                              old_price: '543,33',
                              product_text: 'FS - Nike Air Max 270 React',
                              sale: '24% off'),
                          card_components(
                              urlImage:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-1s8nlM2QBF1yQOvWIPxMGOsSSwcICrIQw&usqp=CAU',
                              new_price: '299,43',
                              old_price: '543,33',
                              product_text: 'FS - QUILTED MAXI CROS',
                              sale: '24% off'),
                          card_components(
                              urlImage:
                                  'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                              new_price: '2429,00',
                              old_price: '2800,00',
                              product_text:
                                  'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                              sale: '24% off'),
                        ],
                      ),
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mega Sale"),
                        TextButton(onPressed: () {}, child: Text("See More")),
                      ],
                    ),
                      SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          card_components(
                              urlImage:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqfRq03XIpz7IJfj19gk3YMtIC7AC3_lIvzA&usqp=CAU',
                              new_price: '299,43',
                              old_price: '543,33',
                              product_text: 'FS - Nike Air Max 270 React',
                              sale: '24% off'),
                          card_components(
                              urlImage:
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk-1s8nlM2QBF1yQOvWIPxMGOsSSwcICrIQw&usqp=CAU',
                              new_price: '299,43',
                              old_price: '543,33',
                              product_text: 'FS - QUILTED MAXI CROS',
                              sale: '24% off'),
                          card_components(
                              urlImage:
                                  'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                              new_price: '2429,00',
                              old_price: '2800,00',
                              product_text:
                                  'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                              sale: '24% off'),
                        ],
                      ),
                    ),

                      Stack(
                      children: [
                        Image.asset('assets/Images/coverShoes.png'),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50, bottom: 50, right: 50),
                          child: ListTile(
                            title: Text("Recomended Product",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: AppColors.whiteColor)),
                            subtitle: Text(
                              "We Recommend the best for you",
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                            autofocus: true,
                            selected: true,
                          ),
                        ),
                      ],
                    ),

                      SizedBox(
                      height: 2,
                    ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                        children: [
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                        ],
                    ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                        children: [
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                          grid_container_components(
                            urlImage:
                                'https://m.media-amazon.com/images/I/71eTPIjcR7L._AC_SY575_.jpg',
                            product_text:
                                'Asics Gel-Quantum 90 Road Running Shoes for Men, White (White), 42 EU',
                            old_price: '2800,00',
                            new_price: '2429,00',
                            sale: '24',
                          ),
                        ],
                    ),
                      ),
                ]))),
          ]),
        ),
      ),
    );
  }
}

class grid_container_components extends StatelessWidget {
  const grid_container_components({
    Key? key,
    required this.urlImage,
    required this.product_text,
    required this.old_price,
    required this.new_price,
    required this.sale,
  }) : super(key: key);
  final String urlImage;
  final String product_text;
  final String old_price;
  final String new_price;
  final String sale;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: GestureDetector(
        onTap: (){
          print("Item Clicked");
        },
        child: Container(
          width: 141,
          height: 238,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  urlImage,
                  fit: BoxFit.fitWidth,
                  width: 105,
                  height: 105,
                ),
                Text(
                  product_text,
                  maxLines: 2,
                ),
                SizedBox(height: 20,),
                Text(
                  "\$new_price",
                  style: TextStyle(color: AppColors.cyanColor),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "\$${old_price}",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: AppColors.grayColor),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      "${sale}% off",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class card_components extends StatelessWidget {
  const card_components({
    Key? key,
    required this.urlImage,
    required this.product_text,
    required this.old_price,
    required this.new_price,
    required this.sale,
  }) : super(key: key);

  final String urlImage;
  final String product_text;
  final String old_price;
  final String new_price;
  final String sale;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){return ItemScreen();}));
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(5)),
          width: 141,
          height: 238,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                    width: 105,
                    height: 105,
                  ),
                  Text(
                    product_text,
                    maxLines: 2,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "\$${new_price}",
                    style: TextStyle(color: AppColors.cyanColor),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "\$${old_price}",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: AppColors.grayColor),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        sale,
                        style: TextStyle(color: Colors.red),
                      )
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

class circle_avatar_components extends StatelessWidget {
  const circle_avatar_components({
    Key? key,
    required this.urlImage,
    required this.text,
  }) : super(key: key);

  final String urlImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){print("Category Clicked");},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.cyanColor,
            radius: 36,
            child: CircleAvatar(
              backgroundColor: AppColors.whiteColor,
              radius: 35,
              child: Container(
                  child: Image.asset(
                urlImage,
                fit: BoxFit.cover,
              )),
            ),
          ),
          Text(
            text,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
//state managements life cycle :
//1) create state
//2) init state -> 2wal ma el page t3ml load l7d ama td5ol makan mo3yan (common)
//3) did dependencies change
//4)
//5)
//6)
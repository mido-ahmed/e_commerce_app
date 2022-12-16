import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/Screens/CartScreen.dart';
import 'package:e_commerce_app/Screens/HomeScreen.dart';
import 'package:e_commerce_app/themes/Colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ItemScreen extends StatefulWidget {
  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  int activeIndex = 0;
  int currentIndex = 0;

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon:Icon(Icons.arrow_back_ios_rounded))),
                    Text(
                      "Nike Air Max 270 React...",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.3),
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    underSlider(
                      text: "Nike Air Zoom Pegasus 36",
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                  ],
                ),
                underSlider(
                  text: "Miami",
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(Icons.star),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                underSlider(
                  text: "\$299,43",
                  color: AppColors.cyanColor,
                ),
                SizedBox(
                  height: 20,
                ),
                underSlider(
                  text: "Select Size",
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizeCard(
                        text: "6",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizeCard(
                        text: "6.5",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizeCard(
                        text: "7",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizeCard(
                        text: "7.5",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizeCard(
                        text: "8",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizeCard(
                        text: "8.5",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                underSlider(
                  text: "Select Color",
                ),
                SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizecolorCard(
                        color: Colors.brown,
                        text: '',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizecolorCard(
                        color: Colors.blue,
                        text: '',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizecolorCard(
                        color: Colors.redAccent,
                        text: '',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizecolorCard(
                        color: Colors.teal,
                        text: '',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizecolorCard(
                        color: Colors.blueGrey,
                        text: '',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizecolorCard(
                        color: Colors.purple,
                        text: '',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizecolorCard(
                        color: Colors.black,
                        text: '',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                underSlider(
                  text: "Specification",
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shown :"),
                    Text("Laser"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Blue/Anthracite/Watermelon/White",
                  textAlign: TextAlign.end,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Style :"),
                    Text("CD0113-400"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Review Product",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See more",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(Icons.star),
                    Text("4.5 (5 Review)"),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404-300x300.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "James Lawson",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(Icons.star),
                              Text("4.5 (5 Review)"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                          "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Card(
                            child: Image.asset('assets/Images/card1.jpg'),
                          ),
                          Card(
                            child: Image.asset('assets/Images/card2.jpg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("December 10, 2016"),
                      SizedBox(
                        height: 15,
                      ),
                      Text("You Might Also Like"),
                    ],
                  ),
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
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(5)),
                    width: 343,
                    height: 57,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context ){
                            return CartScreen(idproduct: 1);
                          }));
                        },
                        child: Text(
                          "Add To Cart",
                          style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class underSlider extends StatelessWidget {
  const underSlider({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class SizeCard extends StatelessWidget {
  const SizeCard({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Size Picked");
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: AppColors.blackColor,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class SizecolorCard extends StatelessWidget {
  const SizecolorCard({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);
  final String text;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Color Picked");
      },
      child: CircleAvatar(
        radius: 30,
        backgroundColor: color,
        child: Text(text),
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
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return ItemScreen();
          }));
        },
        child: Container(
          width: 150,
          height: 180,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
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
                  Text(
                    "\$${new_price}",
                    style: TextStyle(color: AppColors.cyanColor),
                  ),
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

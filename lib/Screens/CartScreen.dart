import 'package:e_commerce_app/cubit/cart_cubit/cart_cubit.dart';
import 'package:e_commerce_app/themes/Colors.dart';
import 'package:e_commerce_app/widgets/global_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CartCubit>();
  }

  int indicator = 0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(builder: (context, state) {
      if (state is CartSuccess) {
        return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 40),
                child: Text(
                  "Your Cart",
                  style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Divider(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayColor),
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                width: 343,
                height: 104,
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Image.network(
                        'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/91/556942/1.jpg?2128'),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nike Air Zoom Pegasus 36 Miami",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            ),
                            Icon(
                              Icons.restore_from_trash_outlined,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text("\$299,43"),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        indicator--;
                                      });
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    child: Text(
                                      "-",
                                      style:
                                          TextStyle(color: AppColors.grayColor),
                                    )),
                                Text("$indicator"),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    onPressed: () {
                                      indicator++;
                                    },
                                    child: Text(
                                      "+",
                                      style:
                                          TextStyle(color: AppColors.grayColor),
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayColor),
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                width: 343,
                height: 104,
                child: Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Image.network(
                        'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/91/556942/1.jpg?2128'),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nike Air Zoom Pegasus 36 Miami",
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.restore_from_trash_outlined,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text("\$299,43"),
                            SizedBox(
                              width: 30,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        indicator--;
                                      });
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    child: Text(
                                      "-",
                                      style:
                                          TextStyle(color: AppColors.grayColor),
                                    )),
                                Text("$indicator"),
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white)),
                                    onPressed: () {
                                      indicator++;
                                    },
                                    child: Text(
                                      "+",
                                      style:
                                          TextStyle(color: AppColors.grayColor),
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                        keyboardType: TextInputType.text,
                        textAlign: TextAlign.start,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: "Enter Cupon Code",
                          border: UnderlineInputBorder(),
                        )),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Apply")),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.grayColor),
                  borderRadius: BorderRadiusDirectional.circular(20),
                ),
                width: 343,
                height: 104,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("utem(3)"),
                        Text("\$598,86"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Shipping"),
                        Text("\$40,00"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("import charges"),
                        Text("\$128,00"),
                      ],
                    ),
                    Divider(
                      height: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("total price"),
                        Text(
                          "\$766,86",
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  height: 57,
                  width: 343,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text("Check Out"))),
            ],
        );
      }
      return Scaffold(
          body: Center(
              child: SizedBox(
        height: 20,
        child: Text("hello"),
      )));
    });
  }
}

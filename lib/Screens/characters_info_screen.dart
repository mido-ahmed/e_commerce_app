import 'package:flutter/material.dart';

class CharactersInfoScreen extends StatefulWidget {
  const CharactersInfoScreen({Key? key}) : super(key: key);

  @override
  State<CharactersInfoScreen> createState() => _CharactersInfoScreenState();
}

class _CharactersInfoScreenState extends State<CharactersInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("@Name"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Image.network(
            'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
            height: 300,
          ),
          SizedBox(
            height: 15,
          ),
          InfoCard(
            infoName: 'name',
            value: 'Anna',
          ),
          SizedBox(
            height: 15,
          ),
          InfoCard(
            infoName: 'role',
            value: 'customer',
          ),
          SizedBox(
            height: 15,
          ),
          InfoCard(
            infoName: 'email',
            value: 'hola@hola.com',
          ),
          SizedBox(
            height: 15,
          ),
          InfoCard(
            infoName: 'password',
            value: '1234',
          ),
          SizedBox(
            height: 15,
          ),
          InfoCard(
            infoName: 'creation at',
            value: '2023-01-22T15:52.000Z',
          ),
          SizedBox(
            height: 15,
          ),
          InfoCard(
            infoName: 'updated at',
            value: '2023-01-22T15:52.000Z',
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  String? value;
  String? infoName;

  InfoCard({this.infoName, this.value});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade200,
      width: 370,
      height: 30,
      child: Text(
        "$infoName : $value",
        style: TextStyle(
            color: Colors.pink, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

import 'package:e_commerce_app/Screens/characters_info_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterScreen extends StatefulWidget {
  const CharacterScreen({Key? key}) : super(key: key);

  @override
  State<CharacterScreen> createState() => _CharacterScreenState();
}

class _CharacterScreenState extends State<CharacterScreen> {
  List<String> charactersImages = [
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
    'https://images.hindustantimes.com/img/2022/11/20/1600x900/Fh8-GrTWQAMEno8_1668910522750_1668910539398_1668910539398.jpg',
  ];
  List<String> charactersNames = [
    'Mido',
    'Mido',
    'Mido',
    'Mido',
    'Mido',
    'Mido',
    'Mido',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users Page"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: InkWell(
        onTap: () {
          print("clicked");
        },
        child: GridView.builder(
          itemCount: charactersImages.length,
          physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 210,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 16,
              childAspectRatio: 0.9),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return SafeArea(
              child: Container(
                width: 100,
                height: 160,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orangeAccent,
                    width: 2,
                  ),
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      charactersImages[0],
                      width: 120,
                      height: 140,
                    ),
                    Container(
                      width: 155,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CharactersInfoScreen(),
                          ));
                        },
                        child: Text(charactersNames[0]),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:moondamon/cactus.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Text> textcactus = [
    Text(
      'Gymno',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Text(
      'Astro',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Text(
      'Ichinop',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Text(
      'Mam Bird',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
    Text(
      'Mammillalia',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  ];
  List<Image> picmain = [
    Image.asset(
      'assets/cactus.jpg',
      width: 150,
      height: 120,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      'assets/succulent.jpg',
      width: 150,
      height: 120,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      'assets/Dorstenia.jpg',
      width: 150,
      height: 120,
      fit: BoxFit.fitWidth,
    ),
  ];
  List<Image> piccactus = [
    Image.asset(
      'assets/gymno.jpg',
      width: 110,
      height: 110,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      'assets/astro.jpg',
      width: 110,
      height: 110,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      'assets/ichinop.jpg',
      width: 110,
      height: 110,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      'assets/bird.jpg',
      width: 110,
      height: 110,
      fit: BoxFit.fitWidth,
    ),
    Image.asset(
      'assets/mammillaria.jpg',
      width: 110,
      height: 110,
      fit: BoxFit.fitWidth,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'NineTree_Dev',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: widthScreen * 0.08,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: widthScreen * 1,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    padding: EdgeInsets.all(15),
                    width: widthScreen * 0.4,
                    child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fillColor: _currentIndex == i
                            ? Colors.lightGreen
                            : Colors.white,
                        onPressed: () {
                          setState(() {
                            _currentIndex = i;
                          });
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: picmain[i]),
                          ],
                        )),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          /////////////cactus
          Container(
            width: widthScreen * 1,
            height: 450,
            child: ListView(
              children: [
                for (int x = 0; x < 5; x++)
                  Column(
                    children: [
                      RaisedButton(
                        color: Colors.white,
                        elevation: 0.0,
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: piccactus[x]),
                            SizedBox(
                              width: 30,
                            ),
                            textcactus[x]
                          ],
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Gymno()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

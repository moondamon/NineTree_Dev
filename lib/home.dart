import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Image> pic = [
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
    )
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
                for (int i = 0; i < 4; i++)
                  Container(
                    padding: EdgeInsets.all(15),
                    width: widthScreen * 0.4,
                    child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        fillColor:
                            _currentIndex == i ? Colors.black : Colors.white,
                        onPressed: () {
                          setState(() {
                            _currentIndex = i;
                          });
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: pic[i]),
                          ],
                        )),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: widthScreen * 1,
            height: 450,
            child: ListView(
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/gymno.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gymno',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthScreen * 0.08,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/mammillaria.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gymno',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthScreen * 0.08,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/2.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gymno',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthScreen * 0.08,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/ichinop.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gymno',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthScreen * 0.08,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/bird.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gymno',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthScreen * 0.08,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/Parodia werneri.jpg',
                            width: 150,
                            height: 150,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gymno',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: widthScreen * 0.08,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

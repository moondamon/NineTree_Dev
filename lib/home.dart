import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
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
                      fillColor: index == i ? Colors.pink : Colors.yellow,
                      onPressed: () {
                        setState(() {
                          index = i;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //cactus
          Container(
            width: widthScreen * 1,
            height: 450,
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/tree.jpg',
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/tree.jpg',
                      width: widthScreen * 0.5,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/tree.jpg',
                      width: widthScreen * 0.5,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/tree.jpg',
                      width: widthScreen * 0.5,
                      height: 150,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

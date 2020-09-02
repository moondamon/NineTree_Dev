import 'package:flutter/material.dart';
import 'package:moondamon/MyPageView.dart';
import 'package:moondamon/MyStack.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => print('Pressed'),
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          iconSize: widthScreen * 0.07,
        ),
        backgroundColor: Color(0xffffaf9f6),
        elevation: 0.0,
      ),
      backgroundColor: Color(0xffffaf9f6),
      body: Column(
        children: [
          Container(
            width: widthScreen,
            padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.05),
            child: Text(
              'Explore',
              style: TextStyle(
                fontSize: widthScreen * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: widthScreen,
            height: widthScreen * 0.5,
            // color: Colors.red,
            child: ListView(
              padding: EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              children: [
                for (var i = 0; i < 4; i++)
                  Container(
                      width: widthScreen * 0.325 + 20,
                      // height: widthScreen * 0.325,
                      padding: EdgeInsets.only(right: 20),
                      child: Center(
                        child: Container(
                          width: widthScreen * 0.325,
                          height: widthScreen * 0.325,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Color(0xbbffffff),
                              blurRadius: 30,
                              offset: Offset(0, 0),
                            ),
                            _currentIndex == i
                                ? BoxShadow(
                                    color: Color(0xbbfbae42),
                                    blurRadius: 15,
                                    offset: Offset(0, 10))
                                : BoxShadow(
                                    color: Colors.grey[300],
                                    blurRadius: 30,
                                    offset: Offset(0, 0),
                                  ),
                          ]),
                          child: RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                _currentIndex = i;
                              });
                            },
                            // child: Text('$_currentIndex'),
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(widthScreen * 0.05)),
                            fillColor: _currentIndex == i
                                ? Color(0xfffbae42)
                                : Colors.white,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                          ),
                        ),
                      ))
              ],
            ),
          ),
          Center(
            child: Container(
              width: widthScreen * 0.9,
              height: widthScreen * 1.05,
              child: MyPageView(
                index: _currentIndex,
              ),
            ),
          )
        ],
      ),
    );
  }
}

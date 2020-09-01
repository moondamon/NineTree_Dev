import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double widthScreen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthScreen = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => print('Pressed'),
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              'Backlog',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.5,
            // color: Colors.red,
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.325,
                // color: Colors.blue,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.325,
                        height: MediaQuery.of(context).size.width * 0.325,
                        color: Colors.yellow),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.325,
                        height: MediaQuery.of(context).size.width * 0.325,
                        color: Colors.yellow),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.325,
                        height: MediaQuery.of(context).size.width * 0.325,
                        color: Colors.yellow),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.325,
                        height: MediaQuery.of(context).size.width * 0.325,
                        color: Colors.yellow),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.325,
                        height: MediaQuery.of(context).size.width * 0.325,
                        color: Colors.yellow),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.325,
                        height: MediaQuery.of(context).size.width * 0.325,
                        color: Colors.yellow),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

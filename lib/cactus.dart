import 'package:flutter/material.dart';

class Gymno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gymno",
          style: TextStyle(
              color: Colors.black,
              fontSize: widthScreen * 0.08,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

class Cactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gymno",
          style: TextStyle(
              color: Colors.black,
              fontSize: widthScreen * 0.08,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

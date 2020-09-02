import 'package:flutter/material.dart';
import 'package:moondamon/MyPageView.dart';
import 'package:moondamon/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NineTree_Dev',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyPageView(),
      home: HomePage(),
    );
  }
}

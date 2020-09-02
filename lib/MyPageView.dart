import 'package:flutter/material.dart';
import 'package:moondamon/MyStack.dart';

class MyPageView extends StatefulWidget {
  final int index;

  const MyPageView({Key key, this.index}) : super(key: key);
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController;
  @override
  Widget build(BuildContext context) {
    _pageController.jumpToPage(widget.index);
    return PageView(
      physics: new NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        Container(
            child: MyStack(
          headerText: 'Indoor Plants',
        )),
        Container(
            child: MyStack(
          headerText: 'Snake Plants',
        )),
        Container(
            child: MyStack(
          headerText: 'Cactus',
        )),
        Container(
            child: MyStack(
          headerText: 'Tonmai',
        )),
      ],
    );
  }
}

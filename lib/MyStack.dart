import 'package:flutter/material.dart';

class MyStack extends StatefulWidget {
  final String headerText;

  const MyStack({Key key, this.headerText}) : super(key: key);

  @override
  _MyStackState createState() => _MyStackState();
}

class _MyStackState extends State<MyStack> {
  double widthScreen;
  @override
  Widget build(BuildContext context) {
    widthScreen = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(widthScreen * 0.08),
          child: Image.asset(
            'assets/PotPlant.jpg',
            fit: BoxFit.fitWidth,
            width: widthScreen * 0.9,
          ),
        ),
        Container(
          width: widthScreen * 0.9,
          height: widthScreen * 1.05,
          padding: EdgeInsets.all(widthScreen * 0.05),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Opacity(
              opacity: 0.85,
              child: Container(
                width: widthScreen * 0.9,
                height: widthScreen * 0.4,
                padding: EdgeInsets.symmetric(
                  vertical: widthScreen * 0.075,
                  horizontal: widthScreen * 0.05,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(widthScreen * 0.05)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.headerText,
                      style: TextStyle(
                        fontSize: widthScreen * 0.07,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: widthScreen * 0.02,
                    ),
                    Text(
                      'description',
                      style: TextStyle(
                        fontSize: widthScreen * 0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: RawMaterialButton(
            onPressed: () {},
            splashColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(widthScreen * 0.065)),
          ),
        )
      ],
    );
  }
}

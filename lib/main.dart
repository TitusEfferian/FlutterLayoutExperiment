import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          color: Colors.lightBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BlueBox(),
              BlueBox(),
              BigBox(),
              BlueBox(),
            ],
          ),
        ),
        Container(
          color: Colors.lightGreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                fit:FlexFit.loose,
                flex: 1,
                child: BlueBox(),
              ),
              Flexible(
                fit:FlexFit.tight,
                flex: 1,
                child: BigBox(),
              ),
              Flexible(
                fit:FlexFit.loose,
                flex: 1,
                child: BlueBox(),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.lightBlue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BlueBox(),
              BlueBox(),
              BigBox(),
              BlueBox(),
            ],
          ),
        ),
      ],
    ));
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

class BigBox extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}

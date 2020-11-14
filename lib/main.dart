import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int ball = 1 + Random().nextInt(5);

  void changeBall() {
    setState(() {
      ball = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Magic Ball'),
          backgroundColor: Colors.indigo,
        ),
        backgroundColor: Colors.blue,
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    changeBall();
                  },
                  child: Image.asset('images/ball$ball.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

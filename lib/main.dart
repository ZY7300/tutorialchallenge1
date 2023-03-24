import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.indigo,
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    randomize();
                  });
                  print("ball number $ballNumber");
                },
                child: Center(child: Image.asset("images/ball$ballNumber.png"))),
          ),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }

  void randomize() {
    ballNumber = Random().nextInt(5) + 1;
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.deepPurple,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: randomize,
              child: Image.asset('images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: randomize,
              child: Image.asset('images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }

  void randomize() {
    setState(() {
      rightDiceNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }
}

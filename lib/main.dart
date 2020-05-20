import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            /* child: Image(
              image: AssetImage('images/dice1.png'),
            ),*/
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
                print('Left Dice $leftDiceNumber Pressed');
              }, //anonyomous function
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  RightDiceNumber = Random().nextInt(6) + 1;
                });
                print('Right Dice $RightDiceNumber Pressed');
              },
              child: Image(
                image: AssetImage('images/dice$RightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
class DicePage extends StatelessWidget {
  int leftDiceNumber = 1;
  int RightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //flex: 2,
            /* child: Image(
              image: AssetImage('images/dice1.png'),
            ),*/
            child: FlatButton(
              onPressed: () {
                print('Left Dice Pressed');
              }, //anonyomous function
              child: Image.asset('images/dice2.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left Dice Pressed');
              },
              child: Image(
                image: AssetImage('images/dice1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 */

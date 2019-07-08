import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.red,
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$leftDice.png'),
            onPressed: () {
              setState(() {
                leftDice = 3;
              });
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$rightDice.png'),
            onPressed: () {
              setState(() {
                rightDice = 4;
              });
            },
          ))
        ],
      ),
    );
  }
}

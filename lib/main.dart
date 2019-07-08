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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDice = 1;
    var rightDice = 2;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$leftDice.png'),
            onPressed: () {
              print('Botão esquerdo ok!');
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$rightDice.png'),
            onPressed: () {
              print('Botão direito ok!');
            },
          ))
        ],
      ),
    );
  }
}

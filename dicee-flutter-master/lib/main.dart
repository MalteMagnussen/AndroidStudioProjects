import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          makeDice('images/dice1.png', 'Left'),
          makeDice('images/dice1.png', 'Right')
        ],
      ),
    );
  }

  Expanded makeDice(String dice, String name) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        onPressed: () {
          print('$name was pressed.');
        },
        //padding: const EdgeInsets.all(0), // Overwrite
        child: Image.asset(
          dice,
        ),
      ),
    );
  }
}

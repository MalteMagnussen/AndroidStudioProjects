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
          makeDice('images/dice1.png'),
          makeDice('images/dice1.png')
        ],
      ),
    );
  }

  Expanded makeDice(String dice) {
    return Expanded(
      flex: 1,
      child: FlatButton(
        onPressed: () {},
        //padding: const EdgeInsets.all(0), // Overwrite
        child: Image.asset(
          dice,
        ),
      ),
    );
  }
}

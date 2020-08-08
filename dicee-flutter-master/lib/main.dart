import 'package:flutter/cupertino.dart';
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          MakeDice(),
          MakeDice(),
        ],
      ),
    );
  }
}

class MakeDice extends StatefulWidget {
  MakeDice();

  @override
  _MakeDiceState createState() => _MakeDiceState();
}

class _MakeDiceState extends State<MakeDice> {
  Random random = new Random();
  int randomNumber;

  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      randomNumber = random.nextInt(6) + 1;
    }

    return Expanded(
      flex: 1,
      child: FlatButton(
        onPressed: () {
          setState(() {
            randomNumber = random.nextInt(6) + 1;
            print('Dice was pressed.\nNew Number is: $randomNumber');
          });
        },
        child: Image.asset(
          'images/dice$randomNumber.png',
        ),
      ),
    );
  }
}

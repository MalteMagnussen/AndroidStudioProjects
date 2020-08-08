import 'package:flutter/material.dart';
import 'dart:math';

class MakeDice extends StatefulWidget {
  MakeDice();

  @override
  _MakeDiceState createState() => _MakeDiceState();
}

class _MakeDiceState extends State<MakeDice> {
  Random random = new Random();
  int randomNumber;

  @override
  void initState() {
    super.initState();
    randomNumber = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
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

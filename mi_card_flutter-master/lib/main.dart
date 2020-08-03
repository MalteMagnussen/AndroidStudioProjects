import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //verticalDirection: VerticalDirection.down,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Column(mainAxisSize: MainAxisSize.max),
                width: 100.0,
                decoration: const BoxDecoration(color: Colors.red),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    height: 100.0,
                    width: 100.0,
                  ),
                  Container(
                    color: Colors.green,
                    height: 100.0,
                    width: 100.0,
                  ),
                ],
              ),
              Container(
                child: Column(mainAxisSize: MainAxisSize.max),
                width: 100.0,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

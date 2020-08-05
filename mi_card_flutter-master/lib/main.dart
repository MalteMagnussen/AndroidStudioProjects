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
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage('https://i.imgur.com/79GJzUP.jpg?1'),
              ),
              Text(
                'Malte Hviid-Magnussen',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 23.0,
                  letterSpacing: 2.5,
                  color: Colors.teal.shade100,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.teal,
                      //size: 50.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('+45 42 30 12 07',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontSize: 20.0,
                            fontFamily: 'Source Sans Pro'))
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('maltehviidmagnussen@gmail.com',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

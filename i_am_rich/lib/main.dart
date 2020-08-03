import 'package:flutter/material.dart';

// Main function is the starting point for all our flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("I Am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.deepPurple[500],
        body: Center(
          child: Image(
            image: NetworkImage('https://i.imgur.com/ffdWq2M.jpg'),
          ),
        ),
      ),
    ),
  );
}

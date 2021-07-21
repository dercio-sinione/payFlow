import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Get Started',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.green,
          height: 500,
          width: 500,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amber[600],
          ),
        ),
      )));
}

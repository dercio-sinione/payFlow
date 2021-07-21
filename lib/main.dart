import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Get Started',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    home: Scaffold(
      appBar: AppBar(title: Text('Get Started')),
      body: Center(
        child: Text("CONTADOR \n 0", textAlign: TextAlign.center),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ),
  ));
}

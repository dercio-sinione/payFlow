import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Get Started',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(title: Text('Meu Primeiro App')),
        body: Center(
          child: Text("CONTADOR \n $count", textAlign: TextAlign.center),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => fnCount(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

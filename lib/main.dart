import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Get Started',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;

  void fnCount() {
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
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

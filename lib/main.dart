import 'package:flutter/material.dart';
import 'package:nl_pay_flow/modules/splash/splash_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Get Started',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: SplashPage());
  }
}

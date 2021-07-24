import 'package:flutter/material.dart';

import 'package:nl_pay_flow/modules/home/home_page.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pay Flow',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: AppColors.primary),
        home: HomePage());
  }
}

import 'package:flutter/material.dart';
import 'package:nl_pay_flow/shared/routes/routes_config.dart';

import 'shared/themes/app_colors.dart';
import 'shared/routes/app_routes.dart';

void main() => runApp(AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: AppRoutes.splash,
      routes: fnAppRoutes(context),
    );
  }
}

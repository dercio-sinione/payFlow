import 'package:flutter/material.dart';

import 'package:nl_pay_flow/modules/home/home_page.dart';
import 'package:nl_pay_flow/modules/insert_boleto/insert_boleto_page.dart';
import 'package:nl_pay_flow/modules/login/login_page.dart';
import 'package:nl_pay_flow/modules/splash/splash_page.dart';
import 'routes_config.dart';

dynamic fnAppRoutes(BuildContext context) {
  return {
    AppRoutes.splash: (context) => SplashPage(),
    AppRoutes.login: (context) => LoginPage(),
    AppRoutes.home: (context) => HomePage(),
    AppRoutes.insertBoleto: (context) => InsertBoletoPage(),
  };
}

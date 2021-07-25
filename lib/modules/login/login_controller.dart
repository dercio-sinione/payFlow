import 'package:flutter/widgets.dart';
import 'package:nl_pay_flow/shared/auth/auth_controller.dart';
import 'package:nl_pay_flow/shared/models/users.dart';

class LoginController {
  final authController = AuthController();

  Future<void> myuser(
      {required BuildContext context,
      required String username,
      required String password}) async {
    try {
      User? user = User.getUser(username: username, password: password);
      print("User: ${user!.username} \n Email: ${user.email}");
      authController.setUser(context, user);
    } catch (ex) {
      print("Username ou senha incorrecta!!!");
      authController.setUser(context, null);
    }
  }
}

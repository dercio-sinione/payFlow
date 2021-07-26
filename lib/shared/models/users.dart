import 'dart:convert';

import 'package:nl_pay_flow/shared/themes/app_images.dart';

List<User> listUsers = [
  User(
      username: "dercio",
      email: "dercio@gmail.com",
      password: "1234",
      photoURL: AppImages.person),
  User(
      username: "ana",
      email: "ana@gmail.com",
      password: "1234a",
      photoURL: AppImages.person),
  User(
      username: "derone",
      email: "derone@gmail.com",
      password: "1234",
      photoURL: AppImages.person)
];

class User {
  String username;
  String email;
  String? photoURL;
  String? password;

  User(
      {required this.username,
      required this.email,
      this.password,
      this.photoURL});

  static List<User> allUser() {
    return listUsers;
  }

  static dynamic getUser({required String username, required String password}) {
    var user;
    for (var item in listUsers) {
      if (item.username == username && item.password == password) {
        user = User(
            email: item.email,
            username: item.username,
            password: item.password);
      } else {
        continue;
      }
    }
    return user;
  }

  Map<String, dynamic> toMap() => {
        "name": username,
        "email": email,
        "password": password,
        "photoURL": photoURL
      };

  String toJson() => jsonEncode(toMap());

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
        username: map['name'],
        email: map['email'],
        password: map['password'],
        photoURL: map['photoURL']);
  }

  factory User.fromJson(String json) => User.fromMap(jsonDecode(json));
}

List<Users> listUsers = [
  Users(username: "dercio", email: "dercio@gmail.com", password: "1234"),
  Users(username: "ana", email: "ana@gmail.com", password: "1234a"),
  Users(username: "derone", email: "derone@gmail.com", password: "1234")
];

class Users {
  String username;
  String email;
  String password;

  Users({required this.username, required this.email, required this.password});

  static List<Users> allUser() {
    return listUsers;
  }

  static dynamic getUser({required String username, required String password}) {
    var user;
    for (var item in listUsers) {
      if (item.username == username && item.password == password) {
        user = Users(
            email: item.email,
            username: item.username,
            password: item.password);
      } else {
        continue;
      }
    }
    return user;
  }
}

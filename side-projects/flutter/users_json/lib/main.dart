import 'package:flutter/material.dart';
import 'package:users_json/UserListPage.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Users Json List",
        home: UserList());
  }
}

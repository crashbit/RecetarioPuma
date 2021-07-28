import 'package:flutter/material.dart';
import 'package:users_json/Models/User.dart';
import 'package:users_json/Provider/FileJson.dart';
import 'package:users_json/Provider/NetworkJson.dart';

class UserList extends StatefulWidget {
  UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJsonFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
      ),
      body: FutureBuilder<List<User>>(
        future: getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print(snapshot);
            return ListView(
              children: UserListWidget(snapshot.data!),
            );
          } else {
            print("No hay informacion");
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  List<Widget> UserListWidget(List<User> lista) {
    List<Widget> listUsers = [];

    for (var item in lista) {
      listUsers.add(Text(item.first_name));
    }
    return listUsers;
  }
}

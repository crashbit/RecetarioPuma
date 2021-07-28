import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:users_json/Models/User.dart';

Future<List<User>> getUsers() async {
  List<User> users = [];

  var urlString = "http://0.0.0.0:3001/api/users";

  var encodedURI = Uri.parse(urlString);
  final response = await http.get(encodedURI);

  if (response.statusCode != 200) {
    return users;
  }

  var jsonText = response.body;

  var listJsonItems = jsonDecode(jsonText) as List;

  List<User> usersList = listJsonItems.map((e) => User.fromMap(e)).toList();

  return usersList;
}

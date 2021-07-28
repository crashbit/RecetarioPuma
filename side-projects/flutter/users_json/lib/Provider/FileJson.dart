import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:users_json/Models/User.dart';

Future<List<User>> readJsonFile() async {
  var jsonText = await rootBundle.loadString('assets/users.json');

  var listJsonItems = jsonDecode(jsonText) as List;

  List<User> users = listJsonItems.map((e) => User.fromMap(e)).toList();

  return users;
}

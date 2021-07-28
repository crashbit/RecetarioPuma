import 'dart:convert';
import 'dart:io';

import 'package:read_json_file/Models/User.dart';

Future<void> main() async {
  String? jsonList;

  jsonList = await readJsonFileAsync();

  var listObjsJson = jsonDecode(jsonList) as List;

  List<User> users = listObjsJson.map((e) => User.fromMap(e)).toList();

  for (var user in users) {
    print(user);
  }
}

Future<String> readJsonFileAsync() {
  File file = new File('../assets/user.json'); // (1)
  Future<String> futureContent = file.readAsString(); // (2)
  return futureContent;
}

String readFileSync() {
  String contents = new File('../assets/user.json').readAsStringSync();
  return contents;
}

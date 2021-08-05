import 'package:shared_preferences/shared_preferences.dart';

class Tools {
  Tools._privateConstructor();

  static final Tools instance = Tools._privateConstructor();

  saveData(String keyName, int data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setInt(keyName, data);
  }

  Future<int> loadData(String keyName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var result = prefs.getInt(keyName);
    if (result == null) {
      return 0;
    } else {
      return result;
    }
  }
}

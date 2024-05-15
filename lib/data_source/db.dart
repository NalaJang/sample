import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

class MySharedPreferences {
  static MySharedPreferences? _instance;

  MySharedPreferences._();

  static Future<MySharedPreferences> getInstance() async {
    if (_instance == null) {
      _instance = MySharedPreferences._();
      await _instance!._init();
    }
    return _instance!;
  }

  Future<void> _init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<bool> setString(String key, String value) async {
    return await prefs.setString(key, value);
  }

  String? getString(String key) {
    return prefs.getString(key);
  }
}
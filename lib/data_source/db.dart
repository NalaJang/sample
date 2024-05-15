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

  Future<void> setStringList(String key, List<String> value) async {
    await prefs.setStringList(key, value);
  }

  List<String>? getStringList(String key) {
    return prefs.getStringList(key);
  }
}
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:search_ex/data_source/db.dart';
import 'package:search_ex/model/food.dart';

class HomeViewModel with ChangeNotifier {
  final MySharedPreferences _preferences;
  final List<Food> _savedFoodList = [];
  String? _savedData;

  HomeViewModel({
    required MySharedPreferences preferences,
  }) : _preferences = preferences;

  void getAllSavedData() {
    Set<String> allKeys = _preferences.getAllKeys();
    for (String key in allKeys) {
      final value = _preferences.getString(key);
      final food = Food.fromJson(jsonDecode(value!));
      _savedFoodList.add(food);
    }
  }

  List<Food> get savedFoodList => _savedFoodList;

  String? get savedData => _savedData;
}

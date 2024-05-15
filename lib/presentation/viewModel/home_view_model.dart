import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:search_ex/data_source/db.dart';
import 'package:search_ex/model/food.dart';

enum HomeScreenStatus {
  waiting,
  loading,
  success,
  error;

  bool get isWaiting => this == HomeScreenStatus.waiting;

  bool get isLoading => this == HomeScreenStatus.loading;

  bool get isSuccess => this == HomeScreenStatus.success;

  bool get isError => this == HomeScreenStatus.error;
}

class HomeViewModel with ChangeNotifier {
  final MySharedPreferences _preferences;
  final List<Food> _savedFoodList = [];
  HomeScreenStatus _status = HomeScreenStatus.waiting;
  String? _savedData;

  HomeViewModel({
    required MySharedPreferences preferences,
  }) : _preferences = preferences;

  void getAllSavedData() {
    _status = HomeScreenStatus.loading;
    notifyListeners();

    try {
      Set<String> allKeys = _preferences.getAllKeys();
      for (String key in allKeys) {
        final value = _preferences.getString(key);
        final food = Food.fromJson(jsonDecode(value!));
        _savedFoodList.add(food);
      }

      _status = HomeScreenStatus.success;
      notifyListeners();
    } catch (e) {
      _status = HomeScreenStatus.error;
      notifyListeners();
    }
  }

  List<Food> get savedFoodList => _savedFoodList;

  HomeScreenStatus get status => _status;

  String? get savedData => _savedData;
}

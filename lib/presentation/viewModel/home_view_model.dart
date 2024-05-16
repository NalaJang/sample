import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:search_ex/core/enum/filter.dart';
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
  FilterStatus _filterStatus = FilterStatus.all;
  String? _savedData;

  HomeViewModel({
    required MySharedPreferences preferences,
  }) : _preferences = preferences;

  void getAllSavedData() {
    _status = HomeScreenStatus.loading;
    _savedFoodList.clear();
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

  void setFilterStatus({required String filter}) {
    switch(filter) {
      case '전체' : _filterStatus = FilterStatus.all;
      case '탄수화물' : _filterStatus = FilterStatus.carbon;
      case '단백질' : _filterStatus = FilterStatus.protein;
      case '지방' : _filterStatus = FilterStatus.saturatedFat;
    }
  }

  void getFilterStatus() {
    switch( _filterStatus ) {
      case FilterStatus.all:
        _savedFoodList.sort((a,b) => a.foodName.compareTo(b.foodName));
      case FilterStatus.carbon:
        _savedFoodList.sort((a,b) => b.carbon.compareTo(a.carbon));
      case FilterStatus.protein:
        _savedFoodList.sort((a,b) => b.protein.compareTo(a.protein));
      case FilterStatus.saturatedFat:
        _savedFoodList.sort((a,b) => b.saturatedFat.compareTo(a.saturatedFat));
    }
  }

  List<Food> get savedFoodList => _savedFoodList;

  HomeScreenStatus get status => _status;

  FilterStatus get filterStatus => _filterStatus;

  String? get savedData => _savedData;
}

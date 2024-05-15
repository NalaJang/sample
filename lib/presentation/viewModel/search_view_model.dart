import 'package:flutter/cupertino.dart';
import 'package:search_ex/data_source/db.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/repository/food_repository.dart';

class SearchViewModel with ChangeNotifier {
  final FoodRepository _foodRepository;
  final MySharedPreferences _preferences;
  List<Food> _foodList = [];
  List<Food> _filteredFoodList = [];

  SearchViewModel({
    required FoodRepository foodRepository,
    required MySharedPreferences preferences,
  })  : _foodRepository = foodRepository,
        _preferences = preferences;

  FoodRepository get foodRepository => _foodRepository;

  MySharedPreferences get preferences => _preferences;

  List<Food> get foodList => List.unmodifiable(_foodList);

  List<Food> get filteredFoodList => List.unmodifiable(_filteredFoodList);

  Future<void> _setAllFoodList() async {
    _foodList = await _foodRepository.getFoodList();
  }

  void onSearchFood(String name) async {
    if (name == '') {
      return;
    }
    await _setAllFoodList();

    _filteredFoodList = _foodList.where((e) {
      return e.foodName.toLowerCase().contains(name.toLowerCase()) ||
          e.makerName.toLowerCase().contains(name.toLowerCase());
    }).toList();

    notifyListeners();
  }

  void clearList() {
    _filteredFoodList.clear();
  }
  void resultList() {}
}

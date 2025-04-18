import 'package:flutter/cupertino.dart';
import 'package:search_ex/data/db/db.dart';
import 'package:search_ex/data/model/food.dart';
import 'package:search_ex/data/repository/food_repository.dart';

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

  Future<void> _setAllFoodList() async {
    _foodList = await _foodRepository.getFoodList();
  }

  Future<void> onSearchFood(String name) async {
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

  FoodRepository get foodRepository => _foodRepository;

  MySharedPreferences get preferences => _preferences;

  List<Food> get foodList => List.unmodifiable(_foodList);

  List<Food> get filteredFoodList => List.unmodifiable(_filteredFoodList);
}

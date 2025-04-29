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

  Future<void> _setFoodListByName({required String searchTerm}) async {
    _foodList = await _foodRepository.getFoodListByName(searchTerm: searchTerm);
  }

  Future<void> onSearchFoodByName({required String searchTerm}) async {
    if (searchTerm == '') {
      return;
    }
    await _setFoodListByName(searchTerm: searchTerm);

    _filteredFoodList = _foodList;

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

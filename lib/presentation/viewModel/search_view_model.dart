import 'package:flutter/cupertino.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/repository/food_repository.dart';

class SearchViewModel with ChangeNotifier {
  final FoodRepository _foodRepository;
  List<Food> _foodList = [];
  List<Food> _filteredFoodList = [];
  final queryTextEditingController = TextEditingController();

  SearchViewModel({
    required FoodRepository foodRepository,
  }) : _foodRepository = foodRepository;

  List<Food> get foodList => _foodList;

  FoodRepository get foodRepository => _foodRepository;

  List<Food> get filteredFoodList => _filteredFoodList;

  Future<void> _setAllFoodList() async {
    _foodList = await _foodRepository.getFoodList();
  }

  void onSearchFood(String name) async {
    await _setAllFoodList();

    _filteredFoodList = _foodList.where((e) {
      return e.foodName.toLowerCase().contains(name.toLowerCase()) ||
          e.makerName.toLowerCase().contains(name.toLowerCase());
    }).toList();
    print(_filteredFoodList.length);
    notifyListeners();
  }

  void resultList() {

  }
}

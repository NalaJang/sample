import 'package:flutter/cupertino.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/presentation/search.dart';
import 'package:search_ex/repository/food_repository.dart';

  class HomeViewModel with ChangeNotifier {
  final FoodRepository _foodRepository;
  List<Food> _foodList = [];
  List<Food> _filteredFoodList = [];
  final Search search = Search([]);

  HomeViewModel({
    required FoodRepository foodRepository,
  }) : _foodRepository = foodRepository;

  List<Food> get foodList => List.unmodifiable(_foodList);

  FoodRepository get foodRepository => _foodRepository;

  // floating 버튼 클릭 시
  Future<void> getFoodList() async {
    _foodList = await _foodRepository.getFoodList();
  }

  void onSearchFood(String name) {
    _filteredFoodList = _foodList.where((e) {
      return e.foodName.toLowerCase().contains(name.toLowerCase()) ||
          e.makerName.toLowerCase().contains(name.toLowerCase());
    }).toList();
    print(_filteredFoodList.length);
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/repository/food_repository.dart';

class SearchViewModel with ChangeNotifier {
  final _queryTextEditingController = TextEditingController();
  final FoodRepository _foodRepository;
  List<Food> _foodList = [];
  List<Food> _filteredFoodList = [];

  SearchViewModel({
    required FoodRepository foodRepository,
  }) : _foodRepository = foodRepository;

  get queryTextEditingController => _queryTextEditingController;

  FoodRepository get foodRepository => _foodRepository;

  List<Food> get foodList => List.unmodifiable(_foodList);

  List<Food> get filteredFoodList => List.unmodifiable(_filteredFoodList);

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

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

  void resultList() {}
}

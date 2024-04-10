import 'package:flutter/cupertino.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/repository/food_repository.dart';

class SearchViewModel with ChangeNotifier {
  List<Food> _foodList = [];
  final FoodRepository _foodRepository;

  SearchViewModel({
    required FoodRepository foodRepository,
  }) : _foodRepository = foodRepository;

  List<Food> get foodList => _foodList;

  FoodRepository get foodRepository => _foodRepository;

  // 검색 버튼 클릭 시
  void pressSearchButton() async {
    _foodList = await _foodRepository.getFoodList();
  }
}

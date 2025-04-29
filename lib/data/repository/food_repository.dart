import 'package:search_ex/data/model/food.dart';

abstract interface class FoodRepository {
  Future<List<Food>> getAllFoodList();

  Future<List<Food>> getFoodListByName({required String searchTerm});
}

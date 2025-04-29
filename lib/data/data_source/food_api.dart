import 'package:search_ex/data/dto/food_dto_new.dart';

abstract interface class FoodApi {
  Future<List<FoodDto>> getAllFoodList();

  Future<List<FoodDto>> getFoodListByName({required String searchTerm});
}

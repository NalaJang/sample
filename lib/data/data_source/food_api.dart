import 'package:search_ex/data/dto/food_dto.dart';

abstract interface class FoodApi {
  Future<List<FoodDto>> getFoodList();
}
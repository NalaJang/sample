import 'package:search_ex/dto/food_dto.dart';

abstract interface class FoodApi {

  Future<List<FoodDto>> getFoodList();

}
import 'package:search_ex/model/food.dart';

abstract interface class FoodRepository {
  Future<List<Food>> getFoodList();
}
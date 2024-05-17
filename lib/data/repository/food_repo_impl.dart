import 'package:search_ex/data/data_source/food_api.dart';
import 'package:search_ex/data/mapper/food_mapper.dart';
import 'package:search_ex/data/model/food.dart';
import 'package:search_ex/data/repository/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodApi _foodApi;

  const FoodRepositoryImpl({
    required FoodApi foodApi,
  }) : _foodApi = foodApi;

  @override
  Future<List<Food>> getFoodList() async {
    final dtoData = await _foodApi.getFoodList();
    final result = dtoData.map((e) => e.toFood()).toList();

    return result;
  }
}

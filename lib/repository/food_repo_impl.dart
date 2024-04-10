import 'package:search_ex/data_source/food_api_impl.dart';
import 'package:search_ex/mapper/food_mapper.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/repository/food_repository.dart';

class FoodRepositoryImpl implements FoodRepository {
  final FoodApiImpl _foodApi;

  const FoodRepositoryImpl({
    required FoodApiImpl foodApi,
  }) : _foodApi = foodApi;

  @override
  Future<List<Food>> getFoodList() async {
    final dtoData = await _foodApi.getFoodList();
    final result = dtoData.map((e) => e.toFood()).toList();

    return result;
  }
}

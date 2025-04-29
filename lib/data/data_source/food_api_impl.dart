import 'dart:convert';

import 'package:search_ex/data/data_source/food_api.dart';
import 'package:http/http.dart' as http;
import 'package:search_ex/data/dto/food_dto_new.dart';

class FoodApiImpl implements FoodApi {
  final String baseUrl = 'https://apis.data.go.kr/1471000/FoodNtrCpntDbInfo02';
  String serviceKey;

  FoodApiImpl({
    required this.serviceKey,
  });

  @override
  Future<List<FoodDto>> getAllFoodList() async {
    String uri =
        '$baseUrl/getFoodNtrCpntDbInq02?serviceKey=$serviceKey&type=json';

    final response = await http.get(Uri.parse(uri));

    if (response.statusCode != 200) {
      return throw Exception(
          'Request failed with status: ${response.statusCode}.');
    }

    final jsonData = await jsonDecode(response.body) as Map<String, dynamic>;
    final items = jsonData['body']['items'] as List;
    final List<FoodDto> foodList =
        items.map((e) => FoodDto.fromJson(e)).toList();

    return foodList;
  }

  @override
  Future<List<FoodDto>> getFoodListByName({required String searchTerm}) async {
    String uri =
        '$baseUrl/getFoodNtrCpntDbInq02?serviceKey=$serviceKey&type=json&FOOD_NM_KR=$searchTerm';

    final response = await http.get(Uri.parse(uri));

    if (response.statusCode != 200) {
      return throw Exception(
          'Request failed with status: ${response.statusCode}.');
    }

    final jsonData = await jsonDecode(response.body) as Map<String, dynamic>;
    final items = jsonData['body']['items'] as List;
    final List<FoodDto> foodList =
        items.map((e) => FoodDto.fromJson(e)).toList();

    return foodList;
  }
}

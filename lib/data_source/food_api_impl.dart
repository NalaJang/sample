import 'dart:convert';

import 'package:search_ex/data_source/food_api.dart';
import 'package:http/http.dart' as http;
import 'package:search_ex/dto/food_dto.dart';

class FoodApiImpl implements FoodApi {
  String uri =
      'https://openapi.foodsafetykorea.go.kr/api/sample/I2790/json/1/5';

  @override
  Future<List<FoodDto>> getFoodList() async {
    final response = await http.get(Uri.parse(uri));

    if (response.statusCode != 200) {
      return throw Exception(
          'Request failed with status: ${response.statusCode}.');
    }

    final jsonData = await jsonDecode(response.body) as Map<String, dynamic>;
    final wholeData = jsonData['I2790'] as Map<String, dynamic>;
    final rowData = wholeData['row'] as List;
    final result = rowData.map((e) => FoodDto.fromJson(e)).toList();

    return result;
  }
}

void main() async {
  FoodApiImpl aa = FoodApiImpl();
  await aa.getFoodList();
}
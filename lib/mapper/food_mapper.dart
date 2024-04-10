import 'package:search_ex/dto/food_dto.dart';
import 'package:search_ex/model/food.dart';
import 'package:search_ex/model/service_id.dart';

extension FoodMapper on FoodDto {
  Food toFood() {
    return Food(
      foodName: desckor ?? '',
      makerName: makername ?? '',
      servingsize: servingsize ?? '',
      servingunit: servingunit ?? '104',
      calories: nutrcont1 ?? '0',
      carbon: nutrcont2 ?? '0',
      sugars: nutrcont5 ?? '0',
      protein: nutrcont3 ?? '0',
      sodium: nutrcont6 ?? '0',
      saturatedFat: nutrcont8 ?? '0',
      transFat: nutrcont9 ?? '0',
    );
  }
}

extension ServiceIdMapper on ServiceIdDto {
  ServiceId toServiceId() {
    return ServiceId(row: row?.map((e) => e.toFood()).toList() ?? [],
    );
  }
}

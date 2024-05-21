import 'package:search_ex/data/dto/food_dto.dart';
import 'package:search_ex/data/model/food.dart';
import 'package:search_ex/data/model/service_id.dart';

extension FoodMapper on FoodDto {
  Food toFood() {
    return Food(
      foodName: desckor ?? '',
      makerName: makername ?? '',
      servingsize: servingsize ?? '',
      servingunit: servingunit ?? '104',
      calories: (nutrcont1 == null || nutrcont1!.isEmpty ) ? '0' : nutrcont1!,
      carbon: (nutrcont2 == null || nutrcont2!.isEmpty ) ? '0' : nutrcont2!,
      sugars: (nutrcont5 == null || nutrcont5!.isEmpty ) ? '0' : nutrcont5!,
      protein: (nutrcont3 == null || nutrcont3!.isEmpty ) ? '0' : nutrcont3!,
      sodium: (nutrcont6 == null || nutrcont6!.isEmpty ) ? '0' : nutrcont6!,
      fat: (nutrcont4 == null || nutrcont4!.isEmpty ) ? '0' : nutrcont4!,
      saturatedFat: (nutrcont8 == null || nutrcont8!.isEmpty ) ? '0' : nutrcont8!,
      transFat: (nutrcont9 == null || nutrcont9!.isEmpty ) ? '0' : nutrcont9!,
    );
  }
}

extension ServiceIdMapper on ServiceIdDto {
  ServiceId toServiceId() {
    return ServiceId(
      row: row?.map((e) => e.toFood()).toList() ?? [],
    );
  }
}

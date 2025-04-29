import 'package:search_ex/data/dto/food_dto_new.dart';
import 'package:search_ex/data/model/food.dart';
import 'package:search_ex/data/model/total_count_model.dart';

extension FoodMapper on FoodDto {
  Food toFood() {
    return Food(
      foodName: foodnmkr ?? '',
      makerName: makernm ?? '',
      servingsize: servingsize ?? '',
      calories: (amtnum1 == null || amtnum1!.isEmpty) ? '0' : amtnum1!,
      carbon: (amtnum6 == null || amtnum6!.isEmpty) ? '0' : amtnum6!,
      sugars: (amtnum7 == null || amtnum7!.isEmpty) ? '0' : amtnum7!,
      protein: (amtnum3 == null || amtnum3!.isEmpty) ? '0' : amtnum3!,
      sodium: (amtnum13 == null || amtnum13!.isEmpty) ? '0' : amtnum13!,
      saturatedFat: (amtnum24 == null || amtnum24!.isEmpty) ? '0' : amtnum24!,
      transFat: (amtnum25 == null || amtnum25!.isEmpty) ? '0' : amtnum25!,
    );
  }
}

extension BodyMapper on Body {
  TotalCountModel toServiceId() {
    return TotalCountModel(
      totalCount: totalCount?.toInt() ?? 0,
    );
  }
}

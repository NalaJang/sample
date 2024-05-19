import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_ex/data/db/db.dart';
import 'package:search_ex/data/model/food.dart';
import 'package:search_ex/design/color_style.dart';

class SearchWidget extends StatelessWidget {
  final Food food;
  final MySharedPreferences preferences;

  const SearchWidget({
    super.key,
    required this.food,
    required this.preferences,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${food.foodName}(${food.makerName})',
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '탄수화물 ${food.carbon}',
                    style: const TextStyle(color: AppColors.gray3),
                  ),
                  Text(
                    '단백질 ${food.protein}',
                    style: const TextStyle(color: AppColors.gray3),
                  ),
                  Text(
                    '지방 ${food.saturatedFat}',
                    style: const TextStyle(color: AppColors.gray3),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () async {
              final Food selectedFood = Food(
                foodName: food.foodName,
                makerName: food.makerName,
                servingsize: food.servingsize,
                servingunit: food.servingunit,
                calories: food.calories,
                carbon: food.carbon,
                sugars: food.sugars,
                protein: food.protein,
                sodium: food.sodium,
                saturatedFat: food.saturatedFat,
                transFat: food.transFat,
              );

              String key = food.foodName;
              String value = jsonEncode(selectedFood.toJson());
              // DB 에 저장
              final result = await preferences.setString(key, value);
              if (result) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('저장되었습니다.')),
                );
              }
            },
            icon: const Icon(
              CupertinoIcons.plus_circle_fill,
              color: AppColors.purple2,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:search_ex/model/food.dart';

class SearchWidget extends StatelessWidget {
  final Food food;

  const SearchWidget({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(food.foodName),
        Text('탄수화물 ${food.carbon}'),
        Text('단백질 ${food.protein}'),
        Text('지방 ${food.saturatedFat}'),
      ],
    );
  }
}

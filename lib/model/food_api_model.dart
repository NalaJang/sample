import 'package:search_ex/dto/food_dto.dart';

class FoodApiModel {
  final ServiceIdDto i2790;

  const FoodApiModel({
    required this.i2790,
  });

  @override
  String toString() {
    return 'FoodApiModel{i2790: $i2790}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodApiModel &&
          runtimeType == other.runtimeType &&
          i2790 == other.i2790;

  @override
  int get hashCode => i2790.hashCode;
}
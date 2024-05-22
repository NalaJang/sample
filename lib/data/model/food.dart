class Food {
  final String foodName;     // 식품이름
  final String makerName;    // 제조사명
  final String servingsize;  // 총내용량
  final String servingunit;  // 총내용량단위
  final String calories;     // 열량(kcal)(1회제공량당)
  final String carbon;       // 탄수화물(g)(1회제공량당)
  final String sugars;       // 당류(g)(1회제공량당)
  final String protein;      // 단백질(g)(1회제공량당)
  final String sodium;       // 나트륨(mg)(1회제공량당)
  final String saturatedFat; // 포화지방산(g)(1회제공량당)
  final String transFat;     // 트랜스지방(g)(1회제공량당)

  const Food({
    required this.foodName,
    required this.makerName,
    required this.servingsize,
    required this.servingunit,
    required this.calories,
    required this.carbon,
    required this.sugars,
    required this.protein,
    required this.sodium,
    required this.saturatedFat,
    required this.transFat,
  });

  Map<String, dynamic> toJson() {
    return {
      'foodName': foodName,
      'makerName': makerName,
      'servingsize': servingsize,
      'servingunit': servingunit,
      'calories': calories,
      'carbon': carbon,
      'sugars': sugars,
      'protein': protein,
      'sodium': sodium,
      'saturatedFat': saturatedFat,
      'transFat': transFat,
    };
  }

  factory Food.fromJson(Map<String, dynamic> map) {
    return Food(
      foodName: map['foodName'] as String,
      makerName: map['makerName'] as String,
      servingsize: map['servingsize'] as String,
      servingunit: map['servingunit'] as String,
      calories: map['calories'] as String,
      carbon: map['carbon'] as String,
      sugars: map['sugars'] as String,
      protein: map['protein'] as String,
      sodium: map['sodium'] as String,
      saturatedFat: map['saturatedFat'] as String,
      transFat: map['transFat'] as String,
    );
  }
}
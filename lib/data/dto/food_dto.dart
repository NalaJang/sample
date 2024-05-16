class FoodApiDto {
  ServiceIdDto? i2790;

  FoodApiDto({
    this.i2790,
  });

  FoodApiDto.fromJson(dynamic json) {
    i2790 = json['I2790'] != null ? ServiceIdDto.fromJson(json['I2790']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (i2790 != null) {
      map['I2790'] = i2790?.toJson();
    }
    return map;
  }
}

// serviceId : I2790
class ServiceIdDto {
  String? totalCount;
  List<FoodDto>? row;
  ResultDto? result;

  ServiceIdDto({
    this.totalCount,
    this.row,
    this.result,
  });

  ServiceIdDto.fromJson(dynamic json) {
    totalCount = json['total_count'];
    if (json['row'] != null) {
      row = [];
      json['row'].forEach((v) {
        row?.add(FoodDto.fromJson(v));
      });
    }
    result = json['RESULT'] != null ? ResultDto.fromJson(json['RESULT']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total_count'] = totalCount;
    if (row != null) {
      map['row'] = row?.map((v) => v.toJson()).toList();
    }
    if (result != null) {
      map['RESULT'] = result?.toJson();
    }
    return map;
  }
}

class ResultDto {
  String? msg;
  String? code;

  ResultDto({
    this.msg,
    this.code,
  });

  ResultDto.fromJson(dynamic json) {
    msg = json['MSG'];
    code = json['CODE'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['MSG'] = msg;
    map['CODE'] = code;
    return map;
  }
}

class FoodDto {
  String? nutrcont8; // 포화지방산(g)(1회제공량당)
  String? nutrcont9; // 트랜스지방(g)(1회제공량당)
  String? nutrcont4; // 지방(g)(1회제공량당)
  String? nutrcont5; // 당류(g)(1회제공량당)
  String? nutrcont6; // 나트륨(mg)(1회제공량당)
  String? num; // 번호
  String? nutrcont7; // 콜레스테롤(mg)(1회제공량당)
  String? nutrcont1; // 열량(kcal)(1회제공량당)
  String? nutrcont2; // 탄수화물(g)(1회제공량당)
  String? subrefname; // 자료출처
  String? nutrcont3; // 단백질(g)(1회제공량당)
  String? researchyear; // 조사년도
  String? makername; // 제조사명
  String? groupname; // 식품군
  String? servingsize; // 총내용량
  String? servingunit; // 총내용량단위
  String? samplingregionname; // 지역명
  String? samplingmonthcd; // 채취월코드
  String? samplingmonthname; // 채취월코드
  String? desckor; // 식품이름
  String? samplingregioncd; // 지역코드
  String? foodcd; // 식품코드

  FoodDto({
    this.nutrcont8,
    this.nutrcont9,
    this.nutrcont4,
    this.nutrcont5,
    this.nutrcont6,
    this.num,
    this.nutrcont7,
    this.nutrcont1,
    this.nutrcont2,
    this.subrefname,
    this.nutrcont3,
    this.researchyear,
    this.makername,
    this.groupname,
    this.servingsize,
    this.servingunit,
    this.samplingregionname,
    this.samplingmonthcd,
    this.samplingmonthname,
    this.desckor,
    this.samplingregioncd,
    this.foodcd,
  });

  FoodDto.fromJson(dynamic json) {
    nutrcont8 = json['NUTR_CONT8'];
    nutrcont9 = json['NUTR_CONT9'];
    nutrcont4 = json['NUTR_CONT4'];
    nutrcont5 = json['NUTR_CONT5'];
    nutrcont6 = json['NUTR_CONT6'];
    num = json['NUM'];
    nutrcont7 = json['NUTR_CONT7'];
    nutrcont1 = json['NUTR_CONT1'];
    nutrcont2 = json['NUTR_CONT2'];
    subrefname = json['SUB_REF_NAME'];
    nutrcont3 = json['NUTR_CONT3'];
    researchyear = json['RESEARCH_YEAR'];
    makername = json['MAKER_NAME'];
    groupname = json['GROUP_NAME'];
    servingsize = json['SERVING_SIZE'];
    servingunit = json['SERVING_UNIT'];
    samplingregionname = json['SAMPLING_REGION_NAME'];
    samplingmonthcd = json['SAMPLING_MONTH_CD'];
    samplingmonthname = json['SAMPLING_MONTH_NAME'];
    desckor = json['DESC_KOR'];
    samplingregioncd = json['SAMPLING_REGION_CD'];
    foodcd = json['FOOD_CD'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['NUTR_CONT8'] = nutrcont8;
    map['NUTR_CONT9'] = nutrcont9;
    map['NUTR_CONT4'] = nutrcont4;
    map['NUTR_CONT5'] = nutrcont5;
    map['NUTR_CONT6'] = nutrcont6;
    map['NUM'] = num;
    map['NUTR_CONT7'] = nutrcont7;
    map['NUTR_CONT1'] = nutrcont1;
    map['NUTR_CONT2'] = nutrcont2;
    map['SUB_REF_NAME'] = subrefname;
    map['NUTR_CONT3'] = nutrcont3;
    map['RESEARCH_YEAR'] = researchyear;
    map['MAKER_NAME'] = makername;
    map['GROUP_NAME'] = groupname;
    map['SERVING_SIZE'] = servingsize;
    map['SERVING_UNIT'] = servingunit;
    map['SAMPLING_REGION_NAME'] = samplingregionname;
    map['SAMPLING_MONTH_CD'] = samplingmonthcd;
    map['SAMPLING_MONTH_NAME'] = samplingmonthname;
    map['DESC_KOR'] = desckor;
    map['SAMPLING_REGION_CD'] = samplingregioncd;
    map['FOOD_CD'] = foodcd;
    return map;
  }
}

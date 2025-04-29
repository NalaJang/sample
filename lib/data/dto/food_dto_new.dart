class FoodDtoNew {
  FoodDtoNew({
    this.header,
    this.body,
  });

  FoodDtoNew.fromJson(dynamic json) {
    header = json['header'] != null ? Header.fromJson(json['header']) : null;
    body = json['body'] != null ? Body.fromJson(json['body']) : null;
  }
  Header? header;
  Body? body;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (header != null) {
      map['header'] = header?.toJson();
    }
    if (body != null) {
      map['body'] = body?.toJson();
    }
    return map;
  }
}

class Body {
  Body({
    this.pageNo,
    this.totalCount,
    this.numOfRows,
    this.items,
  });

  Body.fromJson(dynamic json) {
    pageNo = json['pageNo'];
    totalCount = json['totalCount'];
    numOfRows = json['numOfRows'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(FoodDto.fromJson(v));
      });
    }
  }
  num? pageNo;
  num? totalCount;
  num? numOfRows;
  List<FoodDto>? items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pageNo'] = pageNo;
    map['totalCount'] = totalCount;
    map['numOfRows'] = numOfRows;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class FoodDto {
  FoodDto({
    this.num,
    this.foodcd,
    this.foodnmkr,
    this.dbgrpcm,
    this.dbgrpnm,
    this.dbclasscm,
    this.dbclassnm,
    this.foodorcd,
    this.foodornm,
    this.foodcat1cd,
    this.foodcat1nm,
    this.foodrefcd,
    this.foodrefnm,
    this.foodcat2cd,
    this.foodcat2nm,
    this.foodcat3cd,
    this.foodcat3nm,
    this.foodcat4cd,
    this.foodcat4nm,
    this.servingsize,
    this.amtnum1,
    this.amtnum2,
    this.amtnum3,
    this.amtnum4,
    this.amtnum5,
    this.amtnum6,
    this.amtnum7,
    this.amtnum8,
    this.amtnum9,
    this.amtnum10,
    this.amtnum11,
    this.amtnum12,
    this.amtnum13,
    this.amtnum14,
    this.amtnum15,
    this.amtnum16,
    this.amtnum17,
    this.amtnum18,
    this.amtnum19,
    this.amtnum20,
    this.amtnum21,
    this.amtnum22,
    this.amtnum23,
    this.amtnum24,
    this.amtnum25,
    this.amtnum26,
    this.amtnum27,
    this.amtnum28,
    this.amtnum29,
    this.amtnum30,
    this.amtnum31,
    this.amtnum32,
    this.amtnum33,
    this.amtnum34,
    this.amtnum35,
    this.amtnum36,
    this.amtnum37,
    this.amtnum38,
    this.amtnum39,
    this.amtnum40,
    this.amtnum41,
    this.amtnum42,
    this.amtnum43,
    this.amtnum44,
    this.amtnum45,
    this.amtnum46,
    this.amtnum47,
    this.amtnum48,
    this.amtnum49,
    this.amtnum50,
    this.amtnum51,
    this.amtnum52,
    this.amtnum53,
    this.amtnum54,
    this.amtnum55,
    this.amtnum56,
    this.amtnum57,
    this.amtnum58,
    this.amtnum59,
    this.amtnum60,
    this.amtnum61,
    this.amtnum62,
    this.amtnum63,
    this.amtnum64,
    this.amtnum65,
    this.amtnum66,
    this.amtnum67,
    this.amtnum68,
    this.amtnum69,
    this.amtnum70,
    this.amtnum71,
    this.amtnum72,
    this.amtnum73,
    this.amtnum74,
    this.amtnum75,
    this.amtnum76,
    this.amtnum77,
    this.amtnum78,
    this.amtnum79,
    this.amtnum80,
    this.amtnum81,
    this.amtnum82,
    this.amtnum83,
    this.amtnum84,
    this.amtnum85,
    this.amtnum86,
    this.amtnum87,
    this.amtnum88,
    this.amtnum89,
    this.amtnum90,
    this.amtnum91,
    this.amtnum92,
    this.amtnum93,
    this.amtnum94,
    this.amtnum95,
    this.amtnum96,
    this.amtnum97,
    this.amtnum98,
    this.amtnum99,
    this.amtnum100,
    this.amtnum101,
    this.amtnum102,
    this.amtnum103,
    this.amtnum104,
    this.amtnum105,
    this.amtnum106,
    this.amtnum107,
    this.amtnum108,
    this.amtnum109,
    this.amtnum110,
    this.amtnum111,
    this.amtnum112,
    this.amtnum113,
    this.amtnum114,
    this.amtnum115,
    this.amtnum116,
    this.amtnum117,
    this.amtnum118,
    this.amtnum119,
    this.amtnum120,
    this.amtnum121,
    this.amtnum122,
    this.amtnum123,
    this.amtnum124,
    this.amtnum125,
    this.amtnum126,
    this.amtnum127,
    this.amtnum128,
    this.amtnum129,
    this.amtnum130,
    this.amtnum131,
    this.amtnum132,
    this.amtnum133,
    this.amtnum134,
    this.amtnum135,
    this.amtnum136,
    this.amtnum137,
    this.amtnum138,
    this.amtnum139,
    this.amtnum140,
    this.amtnum141,
    this.amtnum142,
    this.amtnum143,
    this.amtnum144,
    this.amtnum145,
    this.amtnum146,
    this.amtnum147,
    this.amtnum148,
    this.amtnum149,
    this.amtnum150,
    this.amtnum151,
    this.amtnum152,
    this.amtnum153,
    this.amtnum154,
    this.amtnum155,
    this.amtnum156,
    this.amtnum157,
    this.subrefcm,
    this.subrefname,
    this.nutriamountserving,
    this.z10500,
    this.dishoneserving,
    this.itemreportno,
    this.makernm,
    this.impmanufacnm,
    this.sellermanufacnm,
    this.impyn,
    this.nationcm,
    this.nationnm,
    this.crtmthcd,
    this.crtmthnm,
    this.researchymd,
    this.updatedate,
  });

  FoodDto.fromJson(dynamic json) {
    num = json['NUM'];
    foodcd = json['FOOD_CD'];
    foodnmkr = json['FOOD_NM_KR'];
    dbgrpcm = json['DB_GRP_CM'];
    dbgrpnm = json['DB_GRP_NM'];
    dbclasscm = json['DB_CLASS_CM'];
    dbclassnm = json['DB_CLASS_NM'];
    foodorcd = json['FOOD_OR_CD'];
    foodornm = json['FOOD_OR_NM'];
    foodcat1cd = json['FOOD_CAT1_CD'];
    foodcat1nm = json['FOOD_CAT1_NM'];
    foodrefcd = json['FOOD_REF_CD'];
    foodrefnm = json['FOOD_REF_NM'];
    foodcat2cd = json['FOOD_CAT2_CD'];
    foodcat2nm = json['FOOD_CAT2_NM'];
    foodcat3cd = json['FOOD_CAT3_CD'];
    foodcat3nm = json['FOOD_CAT3_NM'];
    foodcat4cd = json['FOOD_CAT4_CD'];
    foodcat4nm = json['FOOD_CAT4_NM'];
    servingsize = json['SERVING_SIZE'];
    amtnum1 = json['AMT_NUM1'];
    amtnum2 = json['AMT_NUM2'];
    amtnum3 = json['AMT_NUM3'];
    amtnum4 = json['AMT_NUM4'];
    amtnum5 = json['AMT_NUM5'];
    amtnum6 = json['AMT_NUM6'];
    amtnum7 = json['AMT_NUM7'];
    amtnum8 = json['AMT_NUM8'];
    amtnum9 = json['AMT_NUM9'];
    amtnum10 = json['AMT_NUM10'];
    amtnum11 = json['AMT_NUM11'];
    amtnum12 = json['AMT_NUM12'];
    amtnum13 = json['AMT_NUM13'];
    amtnum14 = json['AMT_NUM14'];
    amtnum15 = json['AMT_NUM15'];
    amtnum16 = json['AMT_NUM16'];
    amtnum17 = json['AMT_NUM17'];
    amtnum18 = json['AMT_NUM18'];
    amtnum19 = json['AMT_NUM19'];
    amtnum20 = json['AMT_NUM20'];
    amtnum21 = json['AMT_NUM21'];
    amtnum22 = json['AMT_NUM22'];
    amtnum23 = json['AMT_NUM23'];
    amtnum24 = json['AMT_NUM24'];
    amtnum25 = json['AMT_NUM25'];
    amtnum26 = json['AMT_NUM26'];
    amtnum27 = json['AMT_NUM27'];
    amtnum28 = json['AMT_NUM28'];
    amtnum29 = json['AMT_NUM29'];
    amtnum30 = json['AMT_NUM30'];
    amtnum31 = json['AMT_NUM31'];
    amtnum32 = json['AMT_NUM32'];
    amtnum33 = json['AMT_NUM33'];
    amtnum34 = json['AMT_NUM34'];
    amtnum35 = json['AMT_NUM35'];
    amtnum36 = json['AMT_NUM36'];
    amtnum37 = json['AMT_NUM37'];
    amtnum38 = json['AMT_NUM38'];
    amtnum39 = json['AMT_NUM39'];
    amtnum40 = json['AMT_NUM40'];
    amtnum41 = json['AMT_NUM41'];
    amtnum42 = json['AMT_NUM42'];
    amtnum43 = json['AMT_NUM43'];
    amtnum44 = json['AMT_NUM44'];
    amtnum45 = json['AMT_NUM45'];
    amtnum46 = json['AMT_NUM46'];
    amtnum47 = json['AMT_NUM47'];
    amtnum48 = json['AMT_NUM48'];
    amtnum49 = json['AMT_NUM49'];
    amtnum50 = json['AMT_NUM50'];
    amtnum51 = json['AMT_NUM51'];
    amtnum52 = json['AMT_NUM52'];
    amtnum53 = json['AMT_NUM53'];
    amtnum54 = json['AMT_NUM54'];
    amtnum55 = json['AMT_NUM55'];
    amtnum56 = json['AMT_NUM56'];
    amtnum57 = json['AMT_NUM57'];
    amtnum58 = json['AMT_NUM58'];
    amtnum59 = json['AMT_NUM59'];
    amtnum60 = json['AMT_NUM60'];
    amtnum61 = json['AMT_NUM61'];
    amtnum62 = json['AMT_NUM62'];
    amtnum63 = json['AMT_NUM63'];
    amtnum64 = json['AMT_NUM64'];
    amtnum65 = json['AMT_NUM65'];
    amtnum66 = json['AMT_NUM66'];
    amtnum67 = json['AMT_NUM67'];
    amtnum68 = json['AMT_NUM68'];
    amtnum69 = json['AMT_NUM69'];
    amtnum70 = json['AMT_NUM70'];
    amtnum71 = json['AMT_NUM71'];
    amtnum72 = json['AMT_NUM72'];
    amtnum73 = json['AMT_NUM73'];
    amtnum74 = json['AMT_NUM74'];
    amtnum75 = json['AMT_NUM75'];
    amtnum76 = json['AMT_NUM76'];
    amtnum77 = json['AMT_NUM77'];
    amtnum78 = json['AMT_NUM78'];
    amtnum79 = json['AMT_NUM79'];
    amtnum80 = json['AMT_NUM80'];
    amtnum81 = json['AMT_NUM81'];
    amtnum82 = json['AMT_NUM82'];
    amtnum83 = json['AMT_NUM83'];
    amtnum84 = json['AMT_NUM84'];
    amtnum85 = json['AMT_NUM85'];
    amtnum86 = json['AMT_NUM86'];
    amtnum87 = json['AMT_NUM87'];
    amtnum88 = json['AMT_NUM88'];
    amtnum89 = json['AMT_NUM89'];
    amtnum90 = json['AMT_NUM90'];
    amtnum91 = json['AMT_NUM91'];
    amtnum92 = json['AMT_NUM92'];
    amtnum93 = json['AMT_NUM93'];
    amtnum94 = json['AMT_NUM94'];
    amtnum95 = json['AMT_NUM95'];
    amtnum96 = json['AMT_NUM96'];
    amtnum97 = json['AMT_NUM97'];
    amtnum98 = json['AMT_NUM98'];
    amtnum99 = json['AMT_NUM99'];
    amtnum100 = json['AMT_NUM100'];
    amtnum101 = json['AMT_NUM101'];
    amtnum102 = json['AMT_NUM102'];
    amtnum103 = json['AMT_NUM103'];
    amtnum104 = json['AMT_NUM104'];
    amtnum105 = json['AMT_NUM105'];
    amtnum106 = json['AMT_NUM106'];
    amtnum107 = json['AMT_NUM107'];
    amtnum108 = json['AMT_NUM108'];
    amtnum109 = json['AMT_NUM109'];
    amtnum110 = json['AMT_NUM110'];
    amtnum111 = json['AMT_NUM111'];
    amtnum112 = json['AMT_NUM112'];
    amtnum113 = json['AMT_NUM113'];
    amtnum114 = json['AMT_NUM114'];
    amtnum115 = json['AMT_NUM115'];
    amtnum116 = json['AMT_NUM116'];
    amtnum117 = json['AMT_NUM117'];
    amtnum118 = json['AMT_NUM118'];
    amtnum119 = json['AMT_NUM119'];
    amtnum120 = json['AMT_NUM120'];
    amtnum121 = json['AMT_NUM121'];
    amtnum122 = json['AMT_NUM122'];
    amtnum123 = json['AMT_NUM123'];
    amtnum124 = json['AMT_NUM124'];
    amtnum125 = json['AMT_NUM125'];
    amtnum126 = json['AMT_NUM126'];
    amtnum127 = json['AMT_NUM127'];
    amtnum128 = json['AMT_NUM128'];
    amtnum129 = json['AMT_NUM129'];
    amtnum130 = json['AMT_NUM130'];
    amtnum131 = json['AMT_NUM131'];
    amtnum132 = json['AMT_NUM132'];
    amtnum133 = json['AMT_NUM133'];
    amtnum134 = json['AMT_NUM134'];
    amtnum135 = json['AMT_NUM135'];
    amtnum136 = json['AMT_NUM136'];
    amtnum137 = json['AMT_NUM137'];
    amtnum138 = json['AMT_NUM138'];
    amtnum139 = json['AMT_NUM139'];
    amtnum140 = json['AMT_NUM140'];
    amtnum141 = json['AMT_NUM141'];
    amtnum142 = json['AMT_NUM142'];
    amtnum143 = json['AMT_NUM143'];
    amtnum144 = json['AMT_NUM144'];
    amtnum145 = json['AMT_NUM145'];
    amtnum146 = json['AMT_NUM146'];
    amtnum147 = json['AMT_NUM147'];
    amtnum148 = json['AMT_NUM148'];
    amtnum149 = json['AMT_NUM149'];
    amtnum150 = json['AMT_NUM150'];
    amtnum151 = json['AMT_NUM151'];
    amtnum152 = json['AMT_NUM152'];
    amtnum153 = json['AMT_NUM153'];
    amtnum154 = json['AMT_NUM154'];
    amtnum155 = json['AMT_NUM155'];
    amtnum156 = json['AMT_NUM156'];
    amtnum157 = json['AMT_NUM157'];
    subrefcm = json['SUB_REF_CM'];
    subrefname = json['SUB_REF_NAME'];
    nutriamountserving = json['NUTRI_AMOUNT_SERVING'];
    z10500 = json['Z10500'];
    dishoneserving = json['DISH_ONE_SERVING'];
    itemreportno = json['ITEM_REPORT_NO'];
    makernm = json['MAKER_NM'];
    impmanufacnm = json['IMP_MANUFAC_NM'];
    sellermanufacnm = json['SELLER_MANUFAC_NM'];
    impyn = json['IMP_YN'];
    nationcm = json['NATION_CM'];
    nationnm = json['NATION_NM'];
    crtmthcd = json['CRT_MTH_CD'];
    crtmthnm = json['CRT_MTH_NM'];
    researchymd = json['RESEARCH_YMD'];
    updatedate = json['UPDATE_DATE'];
  }
  String? num; // 번호
  String? foodcd; // 식품코드
  String? foodnmkr; // 식품명
  String? dbgrpcm; // 데이터구분코드
  String? dbgrpnm; // 데이터구분명
  String? dbclasscm; // 품목대표/상용제품 코드
  String? dbclassnm; // 품목대표/상용제품
  String? foodorcd; // 식품기원코드
  String? foodornm; // 식품기원명
  String? foodcat1cd; // 식품대분류코드
  String? foodcat1nm; // 식품대분류명
  String? foodrefcd; // 대표식품코드
  String? foodrefnm; // 대표식품명
  String? foodcat2cd;
  String? foodcat2nm;
  String? foodcat3cd;
  String? foodcat3nm;
  String? foodcat4cd;
  String? foodcat4nm;
  String? servingsize; // 영양성분함량기준량
  String? amtnum1; // 에너지(kcal)
  String? amtnum2; // 수분(g)
  String? amtnum3; // 단백질(g)
  String? amtnum4; // 지방(g)
  String? amtnum5; // 회분(g)
  String? amtnum6; // 탄수화물(g)
  String? amtnum7; // 당류(g)
  String? amtnum8; // 식이섬유(g)
  String? amtnum9; // 칼슘(mg)
  String? amtnum10; // 철(mg)
  String? amtnum11; // 인(mg)
  String? amtnum12; // 칼륨(mg)
  String? amtnum13; // 나트륨(mg)
  String? amtnum14; // 비타민 A(μg RAE)
  String? amtnum15; // 비타민 A(μg)
  String? amtnum16; // 레티놀(μg)
  String? amtnum17; // 베타카로틴(μg)
  String? amtnum18; // 비타민 B1(mg)
  String? amtnum19; // 비타민 B2(mg)
  String? amtnum20; // 니아신(mg)
  String? amtnum21; // 비타민 C(mg)
  String? amtnum22; // 비타민 D(μg)
  String? amtnum23; // 콜레스테롤(mg)
  String? amtnum24; // 포화지방산(g)
  String? amtnum25; // 트랜스지방산(g)
  String? amtnum26; // 니코틴산 (mg)
  String? amtnum27; // 니코틴아마이드(mg)
  String? amtnum28; // 비오틴(μg)
  String? amtnum29; // 비타민 B6 (mg)
  String? amtnum30; // 비타민 B12(μg)
  String? amtnum31; // 엽산(DFE)(㎍)
  String? amtnum32; // 콜린(mg)
  String? amtnum33;
  String? amtnum34;
  String? amtnum35;
  String? amtnum36;
  String? amtnum37;
  String? amtnum38;
  String? amtnum39;
  String? amtnum40;
  String? amtnum41;
  String? amtnum42;
  String? amtnum43;
  String? amtnum44;
  String? amtnum45;
  String? amtnum46;
  String? amtnum47;
  String? amtnum48;
  String? amtnum49;
  String? amtnum50;
  String? amtnum51;
  String? amtnum52; // 과당(g)
  String? amtnum53; // 당알콜(g)
  String? amtnum54;
  String? amtnum55; // 알룰로오스(g)
  String? amtnum56; // 에리스리톨(g)
  String? amtnum57; // 유당(g)
  String? amtnum58;
  String? amtnum59;
  String? amtnum60; // 포도당(g)
  String? amtnum61; // 총 불포화지방산(g)
  String? amtnum62;
  String? amtnum63;
  String? amtnum64;
  String? amtnum65;
  String? amtnum66;
  String? amtnum67;
  String? amtnum68;
  String? amtnum69;
  String? amtnum70;
  String? amtnum71;
  String? amtnum72;
  String? amtnum73;
  String? amtnum74;
  String? amtnum75;
  String? amtnum76;
  String? amtnum77;
  String? amtnum78;
  String? amtnum79;
  String? amtnum80;
  String? amtnum81;
  String? amtnum82;
  String? amtnum83;
  String? amtnum84;
  String? amtnum85;
  String? amtnum86;
  String? amtnum87;
  String? amtnum88;
  String? amtnum89;
  String? amtnum90;
  String? amtnum91;
  String? amtnum92;
  String? amtnum93;
  String? amtnum94;
  String? amtnum95;
  String? amtnum96;
  String? amtnum97;
  String? amtnum98;
  String? amtnum99;
  String? amtnum100; // 카페인(㎎)
  String? amtnum101;
  String? amtnum102;
  String? amtnum103;
  String? amtnum104;
  String? amtnum105;
  String? amtnum106;
  String? amtnum107;
  String? amtnum108;
  String? amtnum109;
  String? amtnum110;
  String? amtnum111; // 마그네슘(mg)
  String? amtnum112;
  String? amtnum113;
  String? amtnum114;
  String? amtnum115;
  String? amtnum116;
  String? amtnum117;
  String? amtnum118;
  String? amtnum119;
  String? amtnum120; // 총 아미노산(mg)
  String? amtnum121; // 필수아미노산(mg)
  String? amtnum122; // 비필수아미노산(mg)
  String? amtnum123;
  String? amtnum124;
  String? amtnum125;
  String? amtnum126;
  String? amtnum127;
  String? amtnum128;
  String? amtnum129;
  String? amtnum130;
  String? amtnum131; // 아르기닌(mg)
  String? amtnum132;
  String? amtnum133;
  String? amtnum134;
  String? amtnum135;
  String? amtnum136;
  String? amtnum137;
  String? amtnum138;
  String? amtnum139;
  String? amtnum140;
  String? amtnum141;
  String? amtnum142;
  String? amtnum143;
  String? amtnum144;
  String? amtnum145;
  String? amtnum146; // 수용성 식이섬유(g)
  String? amtnum147; // 불용성 식이섬유(g)
  String? amtnum148;
  String? amtnum149; // 엽산_식품 엽산(μg)
  String? amtnum150; // 엽산_합성 엽산(μg)
  String? amtnum151; // 총 필수지방산(g)
  String? amtnum152; // 총 단일불포화지방산(g)
  String? amtnum153; // 총 다중불포화지방산(g)
  String? amtnum154; // 총 지방산(g)
  String? amtnum155; // 지방산의 합(g)
  String? amtnum156;
  String? amtnum157; // 폐기율(%)
  String? subrefcm;
  String? subrefname;
  String? nutriamountserving; // 1회 섭취참고량
  String? z10500; // 식품중량
  dynamic dishoneserving; // 1회분량 참고량
  String? itemreportno; // 품목제조보고번호
  dynamic makernm; // 업체명
  String? impmanufacnm; // 수입업체명
  String? sellermanufacnm; // 유통업체명
  String? impyn; // 수입여부
  String? nationcm; // 원산지국코드
  String? nationnm; // 원산지국명
  String? crtmthcd;
  String? crtmthnm;
  String? researchymd; // 데이터생성일자
  String? updatedate; // 데이터수정일자

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['NUM'] = num;
    map['FOOD_CD'] = foodcd;
    map['FOOD_NM_KR'] = foodnmkr;
    map['DB_GRP_CM'] = dbgrpcm;
    map['DB_GRP_NM'] = dbgrpnm;
    map['DB_CLASS_CM'] = dbclasscm;
    map['DB_CLASS_NM'] = dbclassnm;
    map['FOOD_OR_CD'] = foodorcd;
    map['FOOD_OR_NM'] = foodornm;
    map['FOOD_CAT1_CD'] = foodcat1cd;
    map['FOOD_CAT1_NM'] = foodcat1nm;
    map['FOOD_REF_CD'] = foodrefcd;
    map['FOOD_REF_NM'] = foodrefnm;
    map['FOOD_CAT2_CD'] = foodcat2cd;
    map['FOOD_CAT2_NM'] = foodcat2nm;
    map['FOOD_CAT3_CD'] = foodcat3cd;
    map['FOOD_CAT3_NM'] = foodcat3nm;
    map['FOOD_CAT4_CD'] = foodcat4cd;
    map['FOOD_CAT4_NM'] = foodcat4nm;
    map['SERVING_SIZE'] = servingsize;
    map['AMT_NUM1'] = amtnum1;
    map['AMT_NUM2'] = amtnum2;
    map['AMT_NUM3'] = amtnum3;
    map['AMT_NUM4'] = amtnum4;
    map['AMT_NUM5'] = amtnum5;
    map['AMT_NUM6'] = amtnum6;
    map['AMT_NUM7'] = amtnum7;
    map['AMT_NUM8'] = amtnum8;
    map['AMT_NUM9'] = amtnum9;
    map['AMT_NUM10'] = amtnum10;
    map['AMT_NUM11'] = amtnum11;
    map['AMT_NUM12'] = amtnum12;
    map['AMT_NUM13'] = amtnum13;
    map['AMT_NUM14'] = amtnum14;
    map['AMT_NUM15'] = amtnum15;
    map['AMT_NUM16'] = amtnum16;
    map['AMT_NUM17'] = amtnum17;
    map['AMT_NUM18'] = amtnum18;
    map['AMT_NUM19'] = amtnum19;
    map['AMT_NUM20'] = amtnum20;
    map['AMT_NUM21'] = amtnum21;
    map['AMT_NUM22'] = amtnum22;
    map['AMT_NUM23'] = amtnum23;
    map['AMT_NUM24'] = amtnum24;
    map['AMT_NUM25'] = amtnum25;
    map['AMT_NUM26'] = amtnum26;
    map['AMT_NUM27'] = amtnum27;
    map['AMT_NUM28'] = amtnum28;
    map['AMT_NUM29'] = amtnum29;
    map['AMT_NUM30'] = amtnum30;
    map['AMT_NUM31'] = amtnum31;
    map['AMT_NUM32'] = amtnum32;
    map['AMT_NUM33'] = amtnum33;
    map['AMT_NUM34'] = amtnum34;
    map['AMT_NUM35'] = amtnum35;
    map['AMT_NUM36'] = amtnum36;
    map['AMT_NUM37'] = amtnum37;
    map['AMT_NUM38'] = amtnum38;
    map['AMT_NUM39'] = amtnum39;
    map['AMT_NUM40'] = amtnum40;
    map['AMT_NUM41'] = amtnum41;
    map['AMT_NUM42'] = amtnum42;
    map['AMT_NUM43'] = amtnum43;
    map['AMT_NUM44'] = amtnum44;
    map['AMT_NUM45'] = amtnum45;
    map['AMT_NUM46'] = amtnum46;
    map['AMT_NUM47'] = amtnum47;
    map['AMT_NUM48'] = amtnum48;
    map['AMT_NUM49'] = amtnum49;
    map['AMT_NUM50'] = amtnum50;
    map['AMT_NUM51'] = amtnum51;
    map['AMT_NUM52'] = amtnum52;
    map['AMT_NUM53'] = amtnum53;
    map['AMT_NUM54'] = amtnum54;
    map['AMT_NUM55'] = amtnum55;
    map['AMT_NUM56'] = amtnum56;
    map['AMT_NUM57'] = amtnum57;
    map['AMT_NUM58'] = amtnum58;
    map['AMT_NUM59'] = amtnum59;
    map['AMT_NUM60'] = amtnum60;
    map['AMT_NUM61'] = amtnum61;
    map['AMT_NUM62'] = amtnum62;
    map['AMT_NUM63'] = amtnum63;
    map['AMT_NUM64'] = amtnum64;
    map['AMT_NUM65'] = amtnum65;
    map['AMT_NUM66'] = amtnum66;
    map['AMT_NUM67'] = amtnum67;
    map['AMT_NUM68'] = amtnum68;
    map['AMT_NUM69'] = amtnum69;
    map['AMT_NUM70'] = amtnum70;
    map['AMT_NUM71'] = amtnum71;
    map['AMT_NUM72'] = amtnum72;
    map['AMT_NUM73'] = amtnum73;
    map['AMT_NUM74'] = amtnum74;
    map['AMT_NUM75'] = amtnum75;
    map['AMT_NUM76'] = amtnum76;
    map['AMT_NUM77'] = amtnum77;
    map['AMT_NUM78'] = amtnum78;
    map['AMT_NUM79'] = amtnum79;
    map['AMT_NUM80'] = amtnum80;
    map['AMT_NUM81'] = amtnum81;
    map['AMT_NUM82'] = amtnum82;
    map['AMT_NUM83'] = amtnum83;
    map['AMT_NUM84'] = amtnum84;
    map['AMT_NUM85'] = amtnum85;
    map['AMT_NUM86'] = amtnum86;
    map['AMT_NUM87'] = amtnum87;
    map['AMT_NUM88'] = amtnum88;
    map['AMT_NUM89'] = amtnum89;
    map['AMT_NUM90'] = amtnum90;
    map['AMT_NUM91'] = amtnum91;
    map['AMT_NUM92'] = amtnum92;
    map['AMT_NUM93'] = amtnum93;
    map['AMT_NUM94'] = amtnum94;
    map['AMT_NUM95'] = amtnum95;
    map['AMT_NUM96'] = amtnum96;
    map['AMT_NUM97'] = amtnum97;
    map['AMT_NUM98'] = amtnum98;
    map['AMT_NUM99'] = amtnum99;
    map['AMT_NUM100'] = amtnum100;
    map['AMT_NUM101'] = amtnum101;
    map['AMT_NUM102'] = amtnum102;
    map['AMT_NUM103'] = amtnum103;
    map['AMT_NUM104'] = amtnum104;
    map['AMT_NUM105'] = amtnum105;
    map['AMT_NUM106'] = amtnum106;
    map['AMT_NUM107'] = amtnum107;
    map['AMT_NUM108'] = amtnum108;
    map['AMT_NUM109'] = amtnum109;
    map['AMT_NUM110'] = amtnum110;
    map['AMT_NUM111'] = amtnum111;
    map['AMT_NUM112'] = amtnum112;
    map['AMT_NUM113'] = amtnum113;
    map['AMT_NUM114'] = amtnum114;
    map['AMT_NUM115'] = amtnum115;
    map['AMT_NUM116'] = amtnum116;
    map['AMT_NUM117'] = amtnum117;
    map['AMT_NUM118'] = amtnum118;
    map['AMT_NUM119'] = amtnum119;
    map['AMT_NUM120'] = amtnum120;
    map['AMT_NUM121'] = amtnum121;
    map['AMT_NUM122'] = amtnum122;
    map['AMT_NUM123'] = amtnum123;
    map['AMT_NUM124'] = amtnum124;
    map['AMT_NUM125'] = amtnum125;
    map['AMT_NUM126'] = amtnum126;
    map['AMT_NUM127'] = amtnum127;
    map['AMT_NUM128'] = amtnum128;
    map['AMT_NUM129'] = amtnum129;
    map['AMT_NUM130'] = amtnum130;
    map['AMT_NUM131'] = amtnum131;
    map['AMT_NUM132'] = amtnum132;
    map['AMT_NUM133'] = amtnum133;
    map['AMT_NUM134'] = amtnum134;
    map['AMT_NUM135'] = amtnum135;
    map['AMT_NUM136'] = amtnum136;
    map['AMT_NUM137'] = amtnum137;
    map['AMT_NUM138'] = amtnum138;
    map['AMT_NUM139'] = amtnum139;
    map['AMT_NUM140'] = amtnum140;
    map['AMT_NUM141'] = amtnum141;
    map['AMT_NUM142'] = amtnum142;
    map['AMT_NUM143'] = amtnum143;
    map['AMT_NUM144'] = amtnum144;
    map['AMT_NUM145'] = amtnum145;
    map['AMT_NUM146'] = amtnum146;
    map['AMT_NUM147'] = amtnum147;
    map['AMT_NUM148'] = amtnum148;
    map['AMT_NUM149'] = amtnum149;
    map['AMT_NUM150'] = amtnum150;
    map['AMT_NUM151'] = amtnum151;
    map['AMT_NUM152'] = amtnum152;
    map['AMT_NUM153'] = amtnum153;
    map['AMT_NUM154'] = amtnum154;
    map['AMT_NUM155'] = amtnum155;
    map['AMT_NUM156'] = amtnum156;
    map['AMT_NUM157'] = amtnum157;
    map['SUB_REF_CM'] = subrefcm;
    map['SUB_REF_NAME'] = subrefname;
    map['NUTRI_AMOUNT_SERVING'] = nutriamountserving;
    map['Z10500'] = z10500;
    map['DISH_ONE_SERVING'] = dishoneserving;
    map['ITEM_REPORT_NO'] = itemreportno;
    map['MAKER_NM'] = makernm;
    map['IMP_MANUFAC_NM'] = impmanufacnm;
    map['SELLER_MANUFAC_NM'] = sellermanufacnm;
    map['IMP_YN'] = impyn;
    map['NATION_CM'] = nationcm;
    map['NATION_NM'] = nationnm;
    map['CRT_MTH_CD'] = crtmthcd;
    map['CRT_MTH_NM'] = crtmthnm;
    map['RESEARCH_YMD'] = researchymd;
    map['UPDATE_DATE'] = updatedate;
    return map;
  }
}

class Header {
  Header({
    this.resultCode,
    this.resultMsg,
  });

  Header.fromJson(dynamic json) {
    resultCode = json['resultCode'];
    resultMsg = json['resultMsg'];
  }
  String? resultCode;
  String? resultMsg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['resultCode'] = resultCode;
    map['resultMsg'] = resultMsg;
    return map;
  }
}

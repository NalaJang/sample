import 'package:flutter/material.dart';
import 'package:search_ex/model/food.dart';

class Search extends SearchDelegate {
  String selectedResult = '';
  int selectedIndex = 0;
  final List<Food> _foodData;
  List<String> suggestionList = [];
  final List<String> _savedList = [];
  final List<String> _recentList = [];

  Search(this._foodData);

  List<String> get savedList => _savedList;


  @override
  List<Widget>? buildActions(BuildContext context) {
    // 입력한 검색어 지우기
    return <Widget>[
      IconButton(
        onPressed: () {
          query = '';
          suggestionList.clear();
          print(suggestionList.length);
        },
        icon: const Icon(Icons.close),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // 뒤로 가기
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // showResult() 함수가 호출될 때 검색 결과를 보여준다.
    return Center(
      child: Column(
        children: [
          _result(selectedIndex),
        ],
      ),
    );
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    final makerNames = _foodData.map((e) => e.makerName).toList();
    print('maker: $makerNames');
    suggestionList = [];
    query.isEmpty
        ? suggestionList = _recentList
        : suggestionList
    // .addAll(listExample.where((element) => element.contains(query)));
        .addAll(makerNames.where((element) => element.contains(query)));

    // return Column(
    //   children: listExample.map((food) => SearchWidget(food: food)).toList(),
    // );

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            suggestionList[index],
          ),
          // subtitle: Column(
          //   children: listExample.map((food) => SearchWidget(food: food)).toList(),
          // ),
          onTap: () {
            suggestionList.add(selectedResult);
            selectedResult = suggestionList[index];
            selectedIndex = index;
            _recentList.add(makerNames[index]);
            showResults(context);
          },
        );
      },
    );
  }

  Widget _result(int index) {
    String carbon = _foodData[index].carbon; // 탄수화물
    String protein = _foodData[index].protein; // 단백질
    String fat = _foodData[index].saturatedFat; // 지방

    return Column(
      children: [
        Text(
          selectedResult,
          style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('탄수화물 ${carbon}g'),
        Text('단백질 ${protein}g'),
        Text('지방 ${fat}g'),
        // Spacer(),
        ElevatedButton(
          onPressed: (){

            _savedList.add(selectedResult);
            print(_savedList.length);
          },
          child: Text('추가하기'),
        ),
      ],
    );
  }
}

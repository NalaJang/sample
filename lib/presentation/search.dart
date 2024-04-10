import 'package:flutter/material.dart';
import 'package:search_ex/model/food.dart';

class Search extends SearchDelegate {
  String selectedResult = '';
  int selectedIndex = 0;
  final List<String> _addList = [];
  final List<Food> foodData;

  Search(this.foodData);

  List<String> get addList => _addList;


  @override
  List<Widget>? buildActions(BuildContext context) {
    // 입력한 검색어 지우기
    return <Widget>[
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
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
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // showResult() 함수가 호출될 때 검색 결과를 보여준다.
    return Container(
      child: Center(
        child: Column(
          children: [
            _result(selectedIndex),
          ],
        ),
      ),
    );
  }

  List<String> recentList = ['text4', 'text3'];

  @override
  Widget buildSuggestions(BuildContext context) {
    final makerNames = foodData.map((e) => e.makerName).toList();

    List<String> suggestionList = [];
    query.isEmpty
        ? suggestionList = recentList
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
            showResults(context);
          },
        );
      },
    );
  }

  Widget _result(int index) {
    String carbon = foodData[index].carbon; // 탄수화물
    String protein = foodData[index].protein; // 단백질
    String fat = foodData[index].saturatedFat; // 지방

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
            query = '';
            _addList.add(selectedResult);
            print(_addList.length);
          },
          child: Text('추가하기'),
        ),
      ],
    );
  }
}

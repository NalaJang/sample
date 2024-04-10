import 'package:flutter/material.dart';
import 'package:search_ex/data_source/food_api_impl.dart';
import 'package:search_ex/presentation/my_home.dart';
import 'package:search_ex/presentation/viewModel/search_view_model.dart';
import 'package:search_ex/repository/food_repo_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(
        searchViewModel: SearchViewModel(
          foodRepository: FoodRepositoryImpl(foodApi: FoodApiImpl()),
        ),
      ),
    );
  }
}

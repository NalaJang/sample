import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/presentation/components/search_widget.dart';
import 'package:search_ex/presentation/viewModel/search_view_model.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: viewModel.queryTextEditingController,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                hintText: '검색어',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    final query = viewModel.queryTextEditingController.text;
                    viewModel.onSearchFood(query);
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: viewModel.filteredFoodList.map((food) => SearchWidget(food: food)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

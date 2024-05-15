import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/presentation/components/search_widget.dart';
import 'package:search_ex/presentation/viewModel/search_view_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchTextController = TextEditingController();

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          controller: _searchTextController,
          decoration: const InputDecoration(
            hintText: '검색어를 입력해 주세요.',
          ),
        ),
        leading: IconButton(
          onPressed: () {
            viewModel.clearList();
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {
              viewModel.onSearchFood(_searchTextController.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: viewModel.filteredFoodList
                    .map(
                      (food) => SearchWidget(
                        food: food,
                        preferences: viewModel.preferences,
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:search_ex/presentation/viewModel/search_view_model.dart';
import 'package:search_ex/presentation/search.dart';

class MyHome extends StatelessWidget {
  final SearchViewModel searchViewModel;

  const MyHome({
    super.key,
    required this.searchViewModel,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> list = List.generate(10, (index) => 'text$index');

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              searchViewModel.pressSearchButton();

              await showSearch(
                context: context,
                delegate: Search(searchViewModel.foodList),
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
        title: const Text('Search Bar'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(list[index]),
        ),
      ),
    );
  }
}

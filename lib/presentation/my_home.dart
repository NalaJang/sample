import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/presentation/search_screen.dart';
import 'package:search_ex/presentation/viewModel/home_view_model.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> list = List.generate(10, (index) => 'text$index');
    final searchViewModel = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await searchViewModel.getFoodList();

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen()),
          );
        },
        child: const Icon(Icons.add),
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

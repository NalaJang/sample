import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/presentation/search_screen.dart';
import 'package:search_ex/presentation/viewModel/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() => context.read<HomeViewModel>().getAllSavedData());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: viewModel.savedFoodList.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(viewModel.savedFoodList[index].foodName),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/core/enum/home_screen_status.dart';
import 'package:search_ex/design/color_style.dart';
import 'package:search_ex/presentation/search_screen.dart';
import 'package:search_ex/presentation/viewModel/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int listLength = 0;
  int selectedTag = 0;

  @override
  void initState() {
    super.initState();

    Future.microtask(() => context.read<HomeViewModel>().getAllSavedData());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<HomeViewModel>();
    listLength = viewModel.savedFoodList.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchScreen()),
          );

          // 갱신
          setState(() {
            viewModel.getAllSavedData();
          });
        },
        child: const Icon(Icons.add),
      ),
      body: switch (viewModel.status) {
        HomeScreenStatus.waiting => const SizedBox(),
        HomeScreenStatus.loading =>
          const Center(child: CircularProgressIndicator()),
        HomeScreenStatus.error => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('다시 시도해 주세요.'),
                IconButton(
                  onPressed: () {
                    return;
                  },
                  icon: const Icon(Icons.refresh_outlined),
                ),
              ],
            ),
          ),
        HomeScreenStatus.success => SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                _tags(viewModel),
                const SizedBox(height: 12),
                viewModel.savedFoodList.isEmpty
                    ? const Text('저장된 데이터가 없습니다.')
                    : Expanded(
                        child: ListView.builder(
                          itemCount: viewModel.savedFoodList.length,
                          itemBuilder: (context, index) {
                            viewModel.getFilterStatus();

                            return ListTile(
                              title:
                                  Text(viewModel.savedFoodList[index].foodName),
                              subtitle: Row(
                                children: [
                                  Text(
                                      '탄수화물 ${viewModel.savedFoodList[index].carbon}'),
                                  Text(
                                      '단백질 ${viewModel.savedFoodList[index].protein}'),
                                  Text(
                                      '지방 ${viewModel.savedFoodList[index].saturatedFat}'),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
              ],
            ),
          ),
      },
    );
  }

  Widget _tags(HomeViewModel viewModel) {
    return SizedBox(
      height: 35,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          const Text('전체'),
          const Text('탄수화물'),
          const Text('단백질'),
          const Text('지방'),
        ].asMap().entries.map(
          (entry) {
            final index = entry.key;
            final item = entry.value;
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedTag = index;
                  viewModel.setFilterStatus(filter: item.data!);
                });
              },
              child: Container(
                padding: const EdgeInsets.fromLTRB(7, 5, 7, 5),
                margin: const EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  color: selectedTag == index
                      ? AppColors.purple2
                      : AppColors.white,
                  border: Border.all(
                    color: selectedTag == index
                        ? AppColors.purple2
                        : AppColors.black,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  item.data!,
                  style: selectedTag == index
                      ? const TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                        )
                      : const TextStyle(color: AppColors.black),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

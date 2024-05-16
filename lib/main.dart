import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/data/db/db.dart';
import 'package:search_ex/data/data_source/food_api_impl.dart';
import 'package:search_ex/data/repository/food_repo_impl.dart';
import 'package:search_ex/presentation/home_screen.dart';
import 'package:search_ex/presentation/viewModel/home_view_model.dart';
import 'package:search_ex/presentation/viewModel/search_view_model.dart';

late MySharedPreferences mySharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  mySharedPreferences = await MySharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => HomeViewModel(preferences: mySharedPreferences)),
        ChangeNotifierProvider(
          create: (_) => SearchViewModel(
            foodRepository: FoodRepositoryImpl(foodApi: FoodApiImpl()),
            preferences: mySharedPreferences,
          ),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

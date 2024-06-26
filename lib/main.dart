import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/data/db/db.dart';
import 'package:search_ex/data/data_source/food_api_impl.dart';
import 'package:search_ex/data/repository/food_repo_impl.dart';
import 'package:search_ex/presentation/home/screen/home_screen.dart';
import 'package:search_ex/presentation/home/view_model/home_view_model.dart';
import 'package:search_ex/presentation/search/view_model/search_view_model.dart';

late MySharedPreferences mySharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  mySharedPreferences = await MySharedPreferences.getInstance();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String? apiKey = dotenv.env['API_KEY'];

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => HomeViewModel(preferences: mySharedPreferences)),
        ChangeNotifierProvider(
          create: (_) => SearchViewModel(
            foodRepository: FoodRepositoryImpl(foodApi: FoodApiImpl(apiKey: apiKey!)),
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

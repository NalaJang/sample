import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ex/data_source/db.dart';
import 'package:search_ex/presentation/my_home.dart';
import 'package:search_ex/presentation/viewModel/home_view_model.dart';

void main() {
  MySharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      ),
    );
  }
}

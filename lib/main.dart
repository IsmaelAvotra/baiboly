import 'package:baiboly_app/screens/home_page.dart';
import 'package:baiboly_app/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baiboly Malagasy',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/bottom_bar': (context) => const BottomBarWidget(),
      },
    );
  }
}

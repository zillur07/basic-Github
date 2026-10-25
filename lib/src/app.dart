import 'package:flutter/material.dart';
import 'package:git_app_basic/src/pages/home_page.dart';
import 'package:git_app_basic/src/pages/profile_page.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Color selectedColor = Colors.deepPurple;
  final List<Color> colors = [
    Colors.deepPurple,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.teal,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: selectedColor),
      ),
      // home: HomePage(
      //   colors: colors,
      //   selectedColor: selectedColor,
      //   onColorChange: (color) {
      //     setState(() {
      //       selectedColor = color;
      //     });
      //   },
      // ),
      home: ProfilePage(),
    );
  }
}

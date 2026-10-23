import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final List<Color> colors;
  final Color selectedColor;
  final ValueChanged<Color> onColorChange;
  const AboutPage({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onColorChange,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Page')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: selectedColor.withOpacity(
              0.2,
            ), // Use the selected color from the app state
            child: Center(
              child: Text(
                'About Page Header',
                style: TextStyle(fontSize: 24, color: selectedColor),
              ),
            ),
          ),
          Center(
            child: Text(
              'Welcome to the About Page!',
              style: TextStyle(fontSize: 20, color: selectedColor),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:git_app_basic/src/pages/about_page.dart';

class HomePage extends StatelessWidget {
  final List<Color> colors;
  final Color selectedColor;
  final ValueChanged<Color> onColorChange;
  const HomePage({
    super.key,
    required this.colors,
    required this.selectedColor,
    required this.onColorChange,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Choose Theme Color',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: colors.map((color) {
                return InkWell(
                  onTap: () {
                    onColorChange(color);
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: color,
                    child: selectedColor == color
                        ? Icon(Icons.check, color: Colors.white, size: 20)
                        : null,
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),

      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to My App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 25),

            Card(
              child: ListTile(
                leading: Icon(
                  Icons.palette,
                  color: Theme.of(context).colorScheme.primary,
                  size: 35,
                ),
                title: const Text('Theme Preview'),
                subtitle: const Text('Your selected color is applied!'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: selectedColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: selectedColor, width: 2),
              ),
              height: 150,
              width: double.infinity,

              child: Center(
                child: Text(
                  'This is a preview of the selected color.',
                  style: TextStyle(fontSize: 18, color: selectedColor),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Sample Button'),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Selected Color: $selectedColor',
              style: const TextStyle(fontSize: 16),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutPage(
                      colors: colors,
                      selectedColor: selectedColor,
                      onColorChange: onColorChange,
                    ),
                  ),
                );
              },
              child: const Text('Go to About Page'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

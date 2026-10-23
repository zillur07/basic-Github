import 'package:flutter/material.dart';
import 'package:git_app_basic/src/app.dart';

void main() {
  runApp(App());
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Color selectedColor = Colors.deepPurple;

//   final List<Color> colors = [
//     Colors.deepPurple,
//     Colors.blue,
//     Colors.green,
//     Colors.red,
//     Colors.orange,
//     Colors.teal,
//     Colors.pink,
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,

//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: selectedColor),
//         useMaterial3: true,
//       ),

//       home: HomePage(
//         colors: colors,
//         selectedColor: selectedColor,
//         onColorChange: (color) {
//           setState(() {
//             selectedColor = color;
//           });
//         },
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   final List<Color> colors;
//   final Color selectedColor;
//   final ValueChanged<Color> onColorChange;

//   const HomePage({
//     super.key,
//     required this.colors,
//     required this.selectedColor,
//     required this.onColorChange,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Theme Color App')),

//       // Drawer
//       drawer: Drawer(
//         child: Column(
//           children: [
//             DrawerHeader(
//               child: Center(
//                 child: Text(
//                   'Choose Theme Color',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: colors.map((color) {
//                 return InkWell(
//                   onTap: () {
//                     onColorChange(color);
//                     Navigator.pop(context);
//                   },
//                   child: CircleAvatar(
//                     radius: 15,
//                     backgroundColor: color,
//                     child: selectedColor == color
//                         ? Icon(Icons.check, color: Colors.white, size: 20)
//                         : null,
//                   ),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),

//       // Home Page
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Welcome to My App',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 25),

//             Card(
//               child: ListTile(
//                 leading: Icon(
//                   Icons.palette,
//                   color: Theme.of(context).colorScheme.primary,
//                   size: 35,
//                 ),
//                 title: const Text('Theme Preview'),
//                 subtitle: const Text('Your selected color is applied!'),
//                 trailing: const Icon(Icons.arrow_forward_ios),
//               ),
//             ),

//             const SizedBox(height: 20),

//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: const Text('Sample Button'),
//               ),
//             ),

//             const SizedBox(height: 20),

//             Text(
//               'Selected Color: $selectedColor',
//               style: const TextStyle(fontSize: 16),
//             ),
//           ],
//         ),
//       ),

//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

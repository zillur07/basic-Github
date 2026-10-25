import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Column(
        children: [
          SvgPicture.asset('images/svg/tourists.svg', width: 200, height: 200),
        ],
      ),
    );
  }
}

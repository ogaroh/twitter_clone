import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Home',
          style: TextStyle(color: kBlack),
        ),
        // flexibleSpace: ClipRRect(
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        //     // child: Container(
        //     //   color: Colors.transparent,
        //     // ),
        //   ),
        // ),
        backgroundColor: kWhite.withAlpha(200),
      ),
      body: ListView(
        children: List.generate(
          100,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: kBlack,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          ]),
    );
  }
}

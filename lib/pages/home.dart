// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zenaid/components/bottom_navbar.dart';
import 'package:zenaid/pages/ai.dart';
import 'package:zenaid/pages/community.dart';
import 'package:zenaid/pages/homemain.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 1;

  void navigateBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> pages = [
    const Aipage(),
    const Main(),
    const Community(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      bottomNavigationBar: BottomNav(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: pages[currentIndex],
    );
  }
}

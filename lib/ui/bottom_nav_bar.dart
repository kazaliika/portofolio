import 'package:flutter/material.dart';
import 'package:portofolio/ui/add_story_screen.dart';
import 'package:portofolio/ui/anime.dart';
import 'package:portofolio/ui/home_screen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pilihPage = 0;
  final opsiPage = [
    HomeScreen(),
    const Text('Menjelajahi'),
    AddStoryScreen(),
    Anime(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: opsiPage[pilihPage],
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add Story'),
          TabItem(icon: Icons.movie, title: 'Anime'),
        ],
        backgroundColor: Color(0xFFF97B22),
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            pilihPage = i;
          });
        },
      ),
    );
  }
}

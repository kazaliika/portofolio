import 'package:flutter/material.dart';

import 'package:portofolio/login/page_splash.dart';
import 'package:portofolio/ui/info_detail_screen.dart';
import 'package:portofolio/ui/add_story_screen.dart';
import 'package:portofolio/ui/screens/favorite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddStoryScreen()));
        },
        child: Hero(
          tag: 'image_animation',
          child: Center(
            child: Image.asset(
              'assets/image/IMG.jpg',
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
      drawer: _Drawer(context),
    );
  }

  Drawer _Drawer(context) => Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "App Info",
                style: TextStyle(color: Color(0xFFF97B22), fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_outlined, size: 35),
              title: Text(
                "Account",
                style: TextStyle(fontSize: 24, color: Color(0xFFF97B22)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_applications, size: 35),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 24, color: Color(0xFFF97B22)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => FavoritePage(),
                  ),
                );
              },
              leading: Icon(Icons.bookmark_border, size: 35),
              title: Text(
                "Saved",
                style: TextStyle(fontSize: 24, color: Color(0xFFF97B22)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => PageSplash(),
                  ),
                );
              },
              leading: Icon(Icons.exit_to_app, size: 35),
              title: Text(
                "Exit",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFFF97B22),
                ),
              ),
            ),
          ],
        ),
      );

  AppBar _AppBar(context) => AppBar(
        iconTheme: IconThemeData(color: Color(0xFFFEE8B0)),
        title: Text(
          "Jumawa",
          style: TextStyle(
            color: Color(0xFFFEE8B0),
          ),
        ),
        backgroundColor: Color(0xFFF97B22),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InfoDetailScreen()));
              },
              icon: Icon(
                Icons.info,
                color: Color(0xFFFEE8B0),
              ))
        ],
      );
}

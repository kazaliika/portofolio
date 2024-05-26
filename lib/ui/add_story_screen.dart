import 'package:flutter/material.dart';

import '../login/page_splash.dart';
import 'info_detail_screen.dart';

class AddStoryScreen extends StatefulWidget {
  const AddStoryScreen({super.key});

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  double _scale = 1.0;

  void _onHover(PointerEvent details) {
    setState(() {
      _scale = 1.2;
    });
  }

  void _onExit(PointerEvent details) {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: Center(
        child: MouseRegion(
          onHover: _onHover,
          onExit: _onExit,
          child: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Gambar disentuh!'),
              ));
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 50),
              transform: Matrix4.identity()..scale(_scale),
              child: Image.network(
                'https://picsum.photos/id/200/300',
                width: 300,
                height: 300,
              ),
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

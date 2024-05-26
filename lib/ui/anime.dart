import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:portofolio/ui/provider/favorite_provider.dart';
import 'package:portofolio/ui/screens/favorite.dart';
import 'package:provider/provider.dart';

import '../login/page_splash.dart';
import 'info_detail_screen.dart';

class Anime extends StatefulWidget {
  const Anime({super.key});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  @override
  Widget build(BuildContext context) {
    final words = nouns.take(30).toList();
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      appBar: _AppBar(context),
      body: ListView.builder(
        itemCount: words.length,
        itemBuilder: (context, index) {
          final word = words[index];
          return ListTile(
            title: Text(word),
            trailing: IconButton(
              onPressed: () {
                provider.toggleFavorite(word);
              },
              icon: provider.isExist(word)
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border),
            ),
          );
        },
      ),
      drawer: _Drawer(context),
    );
  }

  // ignore: non_constant_identifier_names
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

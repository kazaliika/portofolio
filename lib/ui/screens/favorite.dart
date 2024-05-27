// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:portofolio/ui/anime.dart';
import 'package:portofolio/ui/provider/favorite_provider.dart';

import '../info_detail_screen.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final words = provider.words;
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
                  ? const Icon(Icons.delete, color: Colors.black)
                  : const Icon(Icons.favorite_border),
            ),
          );
        },
      ),
    );
  }

  AppBar _AppBar(context) => AppBar(
        iconTheme: IconThemeData(color: Color(0xFFFEE8B0)),
        title: Text(
          "Favorite",
          style: TextStyle(
            color: Color(0xFFFEE8B0),
          ),
        ),
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Anime()));
          },
        ),
        backgroundColor: Color(0xFFF97B22),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mobile_screen_share,
              color: Color(0xFFFEE8B0),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InfoDetailScreen()));
            },
            icon: Icon(
              Icons.info,
              color: Color(0xFFFEE8B0),
            ),
          ),
        ],
      );
}

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'info_detail_screen.dart';

class Anime extends StatefulWidget {
  const Anime({super.key});

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(context),
      body: ,
    );
  }

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

import 'package:flutter/material.dart';
import 'package:portofolio/ui/bottom_nav_bar.dart';
import 'package:provider/provider.dart';

import 'ui/provider/favorite_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Jumawa App",
        home: BottomNavBar(),
      ),
    );
  }
}

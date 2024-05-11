import 'package:flutter/material.dart';

class InfoDetailScreen extends StatefulWidget {
  const InfoDetailScreen({super.key});

  @override
  State<InfoDetailScreen> createState() => _InfoDetailScreenState();
}

class _InfoDetailScreenState extends State<InfoDetailScreen> {
  final double boxSize = 150.0;
  int numOfSingleTap = 0;
  int numOfDoubleTap = 0;
  int numOfLongTap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              numOfSingleTap++;
            });
          },
          onDoubleTap: () {
            setState(() {
              numOfDoubleTap++;
            });
          },
          onLongPress: () {
            setState(() {
              numOfLongTap++;
            });
          },
          child: Container(
            width: boxSize,
            height: boxSize,
            color: Colors.lightBlueAccent,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Text(
          'Taps: $numOfSingleTap | Double Taps: $numOfDoubleTap | Long Press: $numOfLongTap',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

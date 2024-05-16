import 'dart:math';
import 'package:flutter/material.dart';

class InfoDetailScreen extends StatefulWidget {
  @override
  _InfoDetailScreenState createState() => _InfoDetailScreenState();
}

class _InfoDetailScreenState extends State<InfoDetailScreen> {
  Color containerColor = Colors.blue;
  Offset pos = Offset(100, 100);
  Random random = Random();

  late double borderRadius = 0;
  late EdgeInsets margin = EdgeInsets.all(0);

  void initState() {
    super.initState();
    setState(() {
      containerColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
      borderRadius = random.nextDouble() * 50;
      margin = EdgeInsets.all(random.nextDouble() * 100);
    });
  }

  void changeState(DragUpdateDetails details) {
    setState(() {
      pos += details.delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: initState,
      onPanUpdate: changeState,
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              left: pos.dx,
              top: pos.dy,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 100),
                width: 100,
                height: 100,
                margin: margin,
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
  int numOfLongPress = 0;

  double posX = 0.0; // hori
  double posY = 0.0; // vert

  @override
  Widget build(BuildContext context) {
    if (posX == 0) {
      centerPosition(context);
    }
    return Scaffold(
      body: Stack(children: [
        Positioned(
          top: posY,
          left: posX,
          child: GestureDetector(
            // onPanUpdate: (DragUpdateDetails details) {
            //   // posX = max(0, posX + details.delta.dx);
            //   setState(() {
            //     posY = max(0, posY + details.delta.dy);
            //     posX = max(0, posY + details.delta.dx);
            //   });
            // },
            onVerticalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                double verticalPosition = details.delta.dy;
                posY += verticalPosition;
              });
            },
            onHorizontalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                double horizontalPosition = details.delta.dx;
                posX += horizontalPosition;
              });
            },
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
                numOfLongPress++;
              });
            },
            child: Container(
              width: boxSize,
              height: boxSize,
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Text(
          'Taps: $numOfSingleTap | Double Taps: $numOfDoubleTap | Long Press: $numOfLongPress',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  void centerPosition(BuildContext context) {
    posX = (MediaQuery.of(context).size.width - boxSize) / 2;
    posY = (MediaQuery.of(context).size.height - boxSize) / 2;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}

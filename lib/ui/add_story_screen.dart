import 'dart:math';

import 'package:flutter/material.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 20;
}

double randomMargin() {
  return Random().nextDouble() * 20;
}

class AddStoryScreen extends StatefulWidget {
  const AddStoryScreen({super.key});

  @override
  State<AddStoryScreen> createState() => _AddStoryScreenState();
}

class _AddStoryScreenState extends State<AddStoryScreen> {
  late double borderRadius;
  late double margin;

  void initState() {
    borderRadius = randomBorderRadius();
    margin = randomMargin();
  }

  void changeState() {
    setState(() {
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.bounceIn,
                  margin: EdgeInsets.all(margin),
                  decoration: BoxDecoration(
                      color: Colors.cyanAccent,
                      borderRadius: BorderRadius.circular(borderRadius)),
                ),
              ),
              ElevatedButton(
                  onPressed: () => changeState(), child: Text('ubah'))
            ],
          ),
        ),
      ),
    );
  }
}

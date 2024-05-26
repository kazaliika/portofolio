import 'package:flutter/material.dart';

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
    );
  }
}

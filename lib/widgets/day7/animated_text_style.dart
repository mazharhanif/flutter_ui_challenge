import 'package:flutter/material.dart';

class AnimatedDefaultWidget extends StatefulWidget {
  const AnimatedDefaultWidget({super.key});

  @override
  State<AnimatedDefaultWidget> createState() => _AnimatedDefaultWidgetState();
}

class _AnimatedDefaultWidgetState extends State<AnimatedDefaultWidget> {
  bool _first = true;

  double _fontSize = 60.0;

  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Default Text Style"),
      ),
      body: Column(
        children: [
          AnimatedDefaultTextStyle(
              child: Text("Animated Defualt Text Styles"),
              style: TextStyle(fontSize: _fontSize, color: _color),
              duration: Duration(seconds: 2)),
          TextButton(
              onPressed: () {
                setState(() {
                  _fontSize = _first ? 90 : 60;
                  _color = _first ? Colors.black : Colors.red;
                  _first = !_first;
                });
              },
              child: Text("Switch"))
        ],
      ),
    );
  }
}

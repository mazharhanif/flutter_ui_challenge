import 'package:flutter/material.dart';

class AnimatedDefaultWidget extends StatefulWidget {
  const AnimatedDefaultWidget({super.key});

  @override
  State<AnimatedDefaultWidget> createState() => _AnimatedDefaultWidgetState();
}

class _AnimatedDefaultWidgetState extends State<AnimatedDefaultWidget> {
  bool isFirst = false;
  double fontsize = 60.0;
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
              child: Text("Animated Default Text Style"),
              style: TextStyle(fontSize: fontsize, color: _color),
              duration: Duration(seconds: 2)),
          TextButton(
              onPressed: () {
                setState(() {
                  fontsize = isFirst ? 60.0 : 90.0;
                  _color = isFirst ? Colors.black : Colors.blue;
                  isFirst = !isFirst;
                });
              },
              child: Text("Show"))
        ],
      ),
    );
  }
}

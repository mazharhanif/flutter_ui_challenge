import 'dart:math';

import 'package:flutter/material.dart';

class DragableWidget extends StatefulWidget {
  const DragableWidget({super.key});

  @override
  State<DragableWidget> createState() => _DragableWidgetState();
}

class _DragableWidgetState extends State<DragableWidget> {
  double left = 0.0;
  double top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned(
        left: left,
        top: top,
        child: GestureDetector(
          onPanUpdate: (details) {
            left = max(0, left + details.delta.dx);
            top = max(0, top + details.delta.dy);
            setState(() {});
          },
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    ]));
  }
}

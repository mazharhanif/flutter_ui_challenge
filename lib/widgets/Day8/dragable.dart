import 'dart:math';

import 'package:flutter/material.dart';

class DragableWidget extends StatefulWidget {
  const DragableWidget({super.key});

  @override
  State<DragableWidget> createState() => _DragableWidgetState();
}

class _DragableWidgetState extends State<DragableWidget> {
  double _left = 0.0;
  double _top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          left: _left,
          top: _top,
          child: GestureDetector(
            onPanUpdate: (details) {
              _left = max(0, _left + details.delta.dx);
              _top = max(0, _top + details.delta.dy);
              setState(() {});
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
        ),
      ],
    ));
  }
}

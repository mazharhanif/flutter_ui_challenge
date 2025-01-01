import 'package:flutter/material.dart';

class LongpressdraggableWidget extends StatefulWidget {
  const LongpressdraggableWidget({super.key});

  @override
  State<LongpressdraggableWidget> createState() =>
      _LongpressdraggableWidgetState();
}

class _LongpressdraggableWidgetState extends State<LongpressdraggableWidget> {
  Offset _offset = Offset(200, 250);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, Constraints) {
        return Stack(children: [
          Positioned(
            left: _offset.dx,
            top: _offset.dy,
            child: LongPressDraggable(
              child: Image.network(
                  width: 200,
                  "https://th.bing.com/th/id/OIP.-r-KbhNbyaJUxW_a7oNM7QAAAA?rs=1&pid=ImgDetMain"),
              feedback: Image.network(
                  width: 200,
                  color: Colors.amber,
                  colorBlendMode: BlendMode.colorBurn,
                  "https://th.bing.com/th/id/OIP.-r-KbhNbyaJUxW_a7oNM7QAAAA?rs=1&pid=ImgDetMain"),
              onDragEnd: (details) {
                setState(() {
                  _offset = Offset(details.offset.dx, details.offset.dy);
                });
              },
            ),
          ),
        ]);
      },) 
    );
  }
}

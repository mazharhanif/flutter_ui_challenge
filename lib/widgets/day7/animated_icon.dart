import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with TickerProviderStateMixin {
  bool _isPaly = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(microseconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated Icons"),
      ),
      body: GestureDetector(
          onTap: () {
            setState(() {
              if (_isPaly == false) {
                _controller.forward();
                _isPaly = true;
              } else {
                _controller.reverse();
                _isPaly = false;
              }
            });
          },
          child: Center(
            child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                size: 30,
                progress: _controller),
          )),
    );
  }
}

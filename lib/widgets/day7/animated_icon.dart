import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isPlay = false;
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
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
              if (_isPlay == false) {
                _controller.forward();
                _isPlay = true;
              } else {
                _controller.reverse();
                _isPlay = false;
              }
            });
          },
          child: Center(
            child: AnimatedIcon(
                icon: AnimatedIcons.play_pause, progress: _controller),
          ),
        ));
  }
}

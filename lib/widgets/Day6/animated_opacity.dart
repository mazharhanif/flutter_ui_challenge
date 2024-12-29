import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  var _myOpacity = 1.0;
  var _isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animated Opacity"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          AnimatedOpacity(
            opacity: _myOpacity,
            duration: Duration(seconds: 2),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (_isVisible) {
                    _myOpacity = 0.0;
                    _isVisible = false;
                  } else {
                    _myOpacity = 1.0;
                    _isVisible = true;
                  }
                });
              },
              child: Container(
                height: 100,
                width: 200,
                color: Colors.amberAccent,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  var turn = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated rotation"),
        ),
        body: Center(
          child: Column(
            children: [
              AnimatedRotation(
                turns: turn,
                duration: Duration(seconds: 1),
                child: FlutterLogo(
                  size: 300,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      turn += 1 / 4;
                    });
                  },
                  child: Text("Rotation"))
            ],
          ),
        ));
  }
}

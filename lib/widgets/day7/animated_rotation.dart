import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double _turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animated rotation"),
        ),
        body: Center(
          child: Column(
            children: [
              Hero(tag: "background", child: Image.network(
                  // width: 150,
                  // height: 100,
                  "https://cdn.pixabay.com/photo/2022/04/06/11/30/girl-7115394_1280.jpg")),
              // AnimatedRotation(
              //   turns: _turns,
              //   duration: Duration(seconds: 1),
              //   child: FlutterLogo(
              //     size: 100,
              //   ),
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       setState(() {
              //         _turns += 1 / 4;
              //       });
              //     },
              //     child: Text("Animated"))
            ],
          ),
        ));
  }
}

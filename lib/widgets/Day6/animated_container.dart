import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  var _width = 200.0;
  var _height = 100.0;
  var flag = true;
  Decoration myDec = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.blueAccent);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animated Container"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (flag) {
                    _height = 200.0;
                    _width = 100.0;
                    flag = false;
                    myDec = BoxDecoration(
                        borderRadius: BorderRadius.circular(21),
                        color: Colors.brown);
                  } else {
                    _height = 100.0;
                    _width = 200.0;
                    flag = true;
                    myDec = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.amberAccent);
                  }
                });
              },
              child: AnimatedContainer(
                  decoration: myDec,
                  width: _width,
                  height: _height,
                  duration: Duration(seconds: 2)),
            ),
          ],
        ),
      ),
    );
  }
}

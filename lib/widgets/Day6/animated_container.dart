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
  var Flag = true;
  var myDec = BoxDecoration(
      borderRadius: BorderRadius.circular(2), color: Colors.redAccent);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Animated Container"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      if (Flag) {
                        _width = 200.0;
                        _height = 100.0;
                        Flag = false;
                        myDec = BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Colors.redAccent);
                      } else {
                        _height = 200.0;
                        _width = 100.0;
                        Flag = true;
                        myDec = BoxDecoration(
                            borderRadius: BorderRadius.circular(21),
                            color: Colors.blueAccent);
                      }
                    });
                  },
                  child: AnimatedContainer(
                    decoration: myDec,
                    duration: Duration(seconds: 2),
                    width: _width,
                    height: _height,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

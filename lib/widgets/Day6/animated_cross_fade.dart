import 'dart:async';

import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AnimatedCrossFadeWidget> {
  bool isFirst = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      reload();
    });
  }

  void reload() {
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AnimatedCrossFade"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              color: Colors.amberAccent.shade400,
            ),
            secondChild: Image.network(
                width: 200,
                height: 200,
                fit: BoxFit.cover,
                "https://i.pinimg.com/736x/ef/6b/0e/ef6b0e84390bfa679ea9a08e17b86ea5.jpg"),
            crossFadeState:
                isFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: Duration(seconds: 2)),
      ),
    );
  }
}

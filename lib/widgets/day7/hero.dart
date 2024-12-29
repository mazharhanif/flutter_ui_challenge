import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/widgets/day7/animated_rotation.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
              child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AnimatedRotationWidget()));
        },
        child: Hero(
            tag: "background",
            child: Image.network(
                width: 150,
                height: 200,
                fit: BoxFit.cover,
                "https://cdn.pixabay.com/photo/2022/04/06/11/30/girl-7115394_1280.jpg")),
      ))),
    );
  }
}

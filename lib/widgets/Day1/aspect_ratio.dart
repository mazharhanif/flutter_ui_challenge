import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                color: Colors.amberAccent,
                child: Image(
                  image: AssetImage(
                    "assets/download2.jpeg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

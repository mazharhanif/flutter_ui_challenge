import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  const FractionallySizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
          child: FractionallySizedBox(
            widthFactor: 0.3,
            heightFactor: 0.3,
            alignment: Alignment.center,
            child: Container(
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}

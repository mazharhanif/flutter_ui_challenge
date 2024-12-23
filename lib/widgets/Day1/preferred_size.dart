import 'package:flutter/material.dart';

class PreferredSizedWidget extends StatelessWidget {
  const PreferredSizedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            child: Center(child: Text("Flutter map")),
            height: 120,
            decoration: BoxDecoration(color: Colors.amberAccent),
          )),
    );
  }
}

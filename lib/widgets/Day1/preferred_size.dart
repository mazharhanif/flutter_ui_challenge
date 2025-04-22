import 'package:flutter/material.dart';

class PreferredSizedWidget extends StatelessWidget {
  const PreferredSizedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Container(
              height: 170,
              child: Center(child: Text("Flutter")),
              decoration: BoxDecoration(color: Colors.amberAccent),
            )));
  }
}

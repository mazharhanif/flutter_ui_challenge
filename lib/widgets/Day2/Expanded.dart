import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Smaple App"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Text(
              "Second Container",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.redAccent,
          )),
          Expanded(
              child: Container(
            child: Text(
              "Second Container",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.redAccent,
          )),
          Expanded(
              child: Container(
            child: Text(
              "Second Container",
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            width: double.infinity,
            color: Colors.redAccent,
          )),
        ],
      ),
    );
  }
}

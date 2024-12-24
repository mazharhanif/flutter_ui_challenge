import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
        children: [
          Flexible(
            // flex: 6,
            fit: FlexFit.loose,
            child: Container(
              child: Text(
                "First Container",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.amber,
            ),
          ),
          Flexible(
            // flex: 4,
            fit: FlexFit.tight,
            child: Container(
              child: Text(
                "Second Container",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.redAccent,
            ),
          ),
          Flexible(
            // flex: 2,
            fit: FlexFit.tight,
            child: Container(
              child: Text(
                "Third Container",
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              width: double.infinity,
              color: Colors.blueAccent,
            ),
          )
        ],
      ),
    );
  }
}

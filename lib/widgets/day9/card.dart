import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Card(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(child: Text("data")),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 3,
              child: Container(
                width: double.infinity,
                height: 50,
                child: Center(child: Text("data")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

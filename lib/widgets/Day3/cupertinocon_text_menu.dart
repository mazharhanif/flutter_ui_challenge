import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: CupertinoContextMenu(
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Action one")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Action two"))
          ],
          child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Image.asset("assets/download2.jpeg"))),
    ));
  }
}

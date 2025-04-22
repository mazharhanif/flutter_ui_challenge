import 'package:flutter/material.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popup menu Button"),
        ),
        body: PopupMenuButton(onSelected: (value) {
          print(value);
        }, itemBuilder: (BuildContext) {
          return [
            PopupMenuItem(
              child: Text("Urdu"),
              value: "Urdu",
            ),
            PopupMenuItem(
              child: Text("English"),
              value: "English",
            ),
            PopupMenuItem(
              child: Text("Sariki"),
              value: "Sariki",
            )
          ];
        }));
  }
}

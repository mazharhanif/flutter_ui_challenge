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
      }, itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(value: "English", child: Text("English")),
          PopupMenuItem(value: "Urdu", child: Text("urdu")),
          PopupMenuItem(
            value: "Sariki",
            child: Text("Sariki"),
          )
        ];
      }),
    );
  }
}

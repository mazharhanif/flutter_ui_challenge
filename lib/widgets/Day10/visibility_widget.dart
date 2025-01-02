import 'package:flutter/material.dart';

class VisibilityWidget extends StatefulWidget {
  const VisibilityWidget({super.key});

  @override
  State<VisibilityWidget> createState() => _VisibilityWidgetState();
}

class _VisibilityWidgetState extends State<VisibilityWidget> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Text("show/hide")),
            Image.asset("assets/download2.jpeg"),
            Visibility(
                visible: isVisible,
                child: Image.asset(
                  "assets/download3.jpeg",
                  width: 300,
                ))
          ],
        ),
      ),
    );
  }
}

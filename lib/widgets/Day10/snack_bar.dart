import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  const SnackBarWidget({super.key});

  @override
  State<SnackBarWidget> createState() => _SnackBarWidgetState();
}

class _SnackBarWidgetState extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Flutter Map"),
                  action: SnackBarAction(
                      label: "undo",
                      onPressed: () {
                        setState(() {});
                      }),
                ));
              },
              child: Text("Show"))),
    );
  }
}

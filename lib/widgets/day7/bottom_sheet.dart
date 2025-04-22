import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.amberAccent,
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                            ),
                            Hero(
                                tag: "background",
                                child: Image.asset("assets/download3.jpeg"))
                          ],
                        );
                      });
                },
                child: Text("Show"))));
  }
}

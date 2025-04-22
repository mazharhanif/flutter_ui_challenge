import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alert dailog"),
        ),
        body: Center(
            child: TextButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, "Cancel");
                              },
                              child: Text("Cancel")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, "Ok");
                              },
                              child: Text("Ok"))
                        ],
                        backgroundColor: Colors.amberAccent,
                        title: Text("Your are ready payment "),
                        content: Text("Are you ready for payment?"),
                      );
                    }),
                child: Text("Click me"))));
  }
}

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
                  builder: (BuildContext context) => AlertDialog(
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, "cancle");
                          },
                          child: Text("cancle")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, "ok");
                          },
                          child: Text("ok")),
                    ],
                    backgroundColor: Colors.amberAccent,
                    content: Text("Are you ready for payment?"),
                    title: Text("your payment process are ready"),
                  ),
                ),
            child: Text("Click me")),
      ),
    );
  }
}

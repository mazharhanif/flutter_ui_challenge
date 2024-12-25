import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text("your payment method are ready"),
                    content: Text("Are you want to pay your payment?"),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context, "cancel"),
                          child: Text("Cancel")),
                      TextButton(
                          onPressed: () => Navigator.pop(context, "Ok"),
                          child: Text("Ok"))
                    ],
                    backgroundColor: Colors.amberAccent,
                  ),
                ),
            child: Text("Click Me")),
      ),
    );
  }
}

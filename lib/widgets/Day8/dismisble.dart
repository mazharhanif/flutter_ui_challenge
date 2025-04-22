import 'package:flutter/material.dart';

class DismisbleWidget extends StatefulWidget {
  const DismisbleWidget({super.key});

  @override
  State<DismisbleWidget> createState() => _DismisbleWidgetState();
}

class _DismisbleWidgetState extends State<DismisbleWidget> {
  List<int> items = List.generate(100, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext context, int index) {
      return Dismissible(
          background: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Icon(
                Icons.delete,
                color: Colors.redAccent,
              ),
            ),
          ),
          direction: DismissDirection.horizontal,
          onDismissed: (direction) {
            setState(() {
              items.removeAt(index);
            });
          },
          key: ValueKey(items[index]),
          child: ListTile(
            title: Text("item${items[index]}"),
          ));
    }));
  }
}

import 'package:flutter/material.dart';

class DismisbleWidget extends StatefulWidget {
  const DismisbleWidget({super.key});

  @override
  State<DismisbleWidget> createState() => _DismisbleWidgetState();
}

class _DismisbleWidgetState extends State<DismisbleWidget> {
  List<int> item = List.generate(100, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
      return Dismissible(
          background: Container(
            color: Colors.amberAccent,
            child: Icon(Icons.delete),
          ),
          key: ValueKey(item[index]),
          onDismissed: (direction) {
            setState(() {
              item.removeAt(index);
            });
          },
          child: ListTile(
            title: Text("Item ${item[index]}"),
          ));
    }));
  }
}

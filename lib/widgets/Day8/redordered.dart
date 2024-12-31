import 'package:flutter/material.dart';

class Redordered extends StatefulWidget {
  const Redordered({super.key});

  @override
  State<Redordered> createState() => _RedorderedState();
}

class _RedorderedState extends State<Redordered> {
  final List<int> items = List.generate(10, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ReorderableListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                key: ValueKey(items[index]),
                tileColor: items[index].isOdd ? Colors.white12 : Colors.white30,
                title: Text("items ${items[index]}"),
                trailing: Icon(Icons.drag_handle),
              );
            },
            itemCount: items.length,
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final int item = items.removeAt(oldIndex);
                items.insert(newIndex, item);
              });
            },
          ),
        ));
  }
}

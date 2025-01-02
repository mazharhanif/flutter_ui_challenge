import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  List<String> items = ["item1", "item2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            }),
        onRefresh: () async {
          await Future.delayed(
            Duration(seconds: 1),
          );
          int nextitems = items.length + 1;
          items.add("item $nextitems");
          setState(() {});
        },
      ),
    );
  }
}

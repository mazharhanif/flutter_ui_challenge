import 'package:flutter/material.dart';

List<Widget> _page = [
  Icon(
    Icons.home_filled,
    color: Colors.black,
    size: 25,
  ),
  Icon(
    Icons.settings,
    color: Colors.black,
    size: 25,
  ),
  Icon(
    Icons.shopping_cart,
    color: Colors.black,
    size: 25,
  ),
];

class TabPageSelectorWidget extends StatefulWidget {
  TabPageSelectorWidget({super.key});

  @override
  State<TabPageSelectorWidget> createState() => _TabPageSelectorWidgetState();
}

class _TabPageSelectorWidgetState extends State<TabPageSelectorWidget>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int index = 0;

  @override
  void initState() {
    _controller =
        TabController(length: _page.length, vsync: this, initialIndex: index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            children: _page,
            controller: _controller,
          ),
          Positioned(
            bottom: 30,
            child: TabPageSelector(
              controller: _controller,
              color: Colors.black,
            ),
          ),
        ],
      ),
      // floatingActionButton: OverflowBar(
      //   children: [
      //     FloatingActionButton.small(
      //       onPressed: () {
      //         (index != _page.length - 1) ? index++ : index = 0;
      //         _controller.animateTo(index);
      //       },
      //       child: Icon(Icons.navigate_next),
      //       elevation: 0,
      //     )
      //   ],
      // ),
    );
  }
}

import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 25,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 25,
            ),
          ]),
          backgroundColor: Colors.blueGrey,
          title: Text("TarBar Widget"),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.grey,
          ),
          Container(
            color: Colors.redAccent,
          )
        ]),
      ),
    );
  }
}

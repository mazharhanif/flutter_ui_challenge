import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  static List<Widget> items = [
    Center(child: Text("home")),
    Center(child: Text("search")),
    Center(child: Text("Shopify")),
    Center(child: Text("person")),
  ];
  int _selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: items[_selectedindex]),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
          currentIndex: _selectedindex,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.white,
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopify_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                label: "Shopify"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_2_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                label: "Profile")
          ]),
    );
  }
}

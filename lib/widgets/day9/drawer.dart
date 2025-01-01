import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.brown),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(21),
                      child: Image.asset(
                        width: 100,
                        height: 100,
                        'assets/download1.jpeg',
                      ),
                    ),
                    Text(
                      "Imran Khan",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Account"),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Log out"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

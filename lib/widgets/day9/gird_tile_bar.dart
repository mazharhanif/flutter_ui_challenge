import 'package:flutter/material.dart';

class GirdTileBarWidget extends StatelessWidget {
  const GirdTileBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(21),
          child: SizedBox(
            height: 400,
            width: 300,
            child: GridTile(
              header: GridTileBar(
                backgroundColor: Colors.black38,
                leading: Icon(Icons.person),
                title: Text("imran khan"),
                trailing: Icon(Icons.menu),
              ),
              child: Image.asset(
                'assets/download1.jpeg',
                fit: BoxFit.cover,
              ),
              footer: GridTileBar(
                backgroundColor: Colors.black38,
                leading: Icon(Icons.favorite),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

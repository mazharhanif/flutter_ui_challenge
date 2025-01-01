import 'package:flutter/material.dart';

class GirdTileWidget extends StatelessWidget {
  const GirdTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(21),
          child: SizedBox(
            height: 400,
            width: 300,
            child: GridTile(
              header: Container(
                height: 40,
                child: Center(child: Text("Header")),
                color: Colors.black38,
              ),
              child: Image.asset(
                'assets/download1.jpeg',
                fit: BoxFit.cover,
              ),
              footer: Container(
                height: 40,
                child: Center(child: Text("Footer")),
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

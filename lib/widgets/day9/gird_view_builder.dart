import 'package:flutter/material.dart';

class GirdViewBuilderWidget extends StatelessWidget {
  const GirdViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var Color = [
      Colors.amberAccent,
      Colors.blue,
      Colors.brown,
      Colors.deepPurple,
      Colors.amber,
      Colors.red,
      Colors.deepOrange,
      Colors.grey,
    ];
    List<String> images = [
      'assets/download1.jpeg',
      'assets/download2.jpeg',
      'assets/download3.jpeg',
      'assets/download2.jpeg',
      'assets/download1.jpeg',
      'assets/download1.jpeg',
      'assets/download1.jpeg',
      'assets/download1.jpeg'
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 11, mainAxisSpacing: 11),
          itemBuilder: (context, index) {
            return Container(
              child: Image.asset(
                images[index],
                fit: BoxFit.cover,
              ),
              color: Color[index],
            );
          },
          itemCount: Color.length,
        ),
      ),
    );
  }
}

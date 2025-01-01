import 'package:flutter/material.dart';

class GirdViewWidget extends StatelessWidget {
  const GirdViewWidget({super.key});

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
    ];
    return Scaffold(
        body: GridView.count(
      crossAxisCount: 2,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color[0],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                images[0],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color[1],
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images[1]))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color[2],
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images[2]))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color[3],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color[4],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color[5],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color[6],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Color[7],
          ),
        )
      ],
    ));
  }
}

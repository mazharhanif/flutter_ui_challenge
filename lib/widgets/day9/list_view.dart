import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var name = ['ali', 'imran', 'Khan', '804', 'imran khan'];
    List<String> images = [
      'assets/download1.jpeg',
      'assets/download2.jpeg',
      'assets/download3.jpeg',
      'assets/download2.jpeg',
      'assets/download1.jpeg'
    ];

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
            child: Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name[index],
                      style: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      width: double.infinity,
                      height: 155,
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}

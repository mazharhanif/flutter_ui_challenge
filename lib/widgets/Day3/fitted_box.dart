import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FittedBox(
      child: Row(
        children: [
          Image.network(
              "https://th.bing.com/th/id/OIP.RWYggzUNsj4eY85uoHTCwQHaEK?rs=1&pid=ImgDetMain"),
          Image.network(
              "https://th.bing.com/th/id/OIP.lqquRiuWc1ZM6Wsk5Lj7HAHaDD?w=727&h=300&rs=1&pid=ImgDetMain")
        ],
      ),
    ));
  }
}

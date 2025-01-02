import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 290, top: 620, right: 0),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.add_a_photo),
              ),
            ),
          ],
        ));
  }
}

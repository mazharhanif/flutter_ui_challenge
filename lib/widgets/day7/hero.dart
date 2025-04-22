import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/widgets/day7/bottom_sheet.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomSheetWidget()));
          },
          child: Hero(
              tag: "background", child: Image.asset("assets/download3.jpeg"))),
    ));
  }
}

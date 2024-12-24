import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/widgets/Day2/flexible.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: FlexibleWidget());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/widgets/Day6/animated_cross_fade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(useMaterial3: true, primarySwatch: Colors.blue),
        home: AnimatedCrossFadeWidget());
  }
}

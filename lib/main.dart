import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/widgets/Day8/dismisble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            brightness: Brightness.light,
            useMaterial3: true,
            primaryColor: Colors.blue),
        home: DismisbleWidget());
  }
}

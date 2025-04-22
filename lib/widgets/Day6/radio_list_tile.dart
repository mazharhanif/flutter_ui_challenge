import 'package:flutter/material.dart';

enum MyOption { option1, option2, option3 }

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  MyOption _myOption = MyOption.option1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RadioListTile"),
      ),
      body: Center(
        child: Column(
          children: [
            RadioListTile(
                value: MyOption.option1,
                groupValue: _myOption,
                onChanged: (value) {
                  setState(() {
                    _myOption = value!;
                  });
                }),
            RadioListTile(
                value: MyOption.option2,
                groupValue: _myOption,
                onChanged: (value) {
                  setState(() {
                    _myOption = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}

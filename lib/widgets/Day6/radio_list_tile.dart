import 'package:flutter/material.dart';

enum MyOption { option1, option2, option3 }

class RadioListTileWidget extends StatefulWidget {
  const RadioListTileWidget({super.key});

  @override
  State<RadioListTileWidget> createState() => _RadioListTileWidgetState();
}

class _RadioListTileWidgetState extends State<RadioListTileWidget> {
  MyOption myOption = MyOption.option1;

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
                title: Text("Select option one"),
                value: MyOption.option1,
                groupValue: myOption,
                onChanged: (value) {
                  setState(() {
                    myOption = value!;
                  });
                }),
            RadioListTile(
                title: Text("Select option two"),
                value: MyOption.option2,
                groupValue: myOption,
                onChanged: (value) {
                  setState(() {
                    myOption = value!;
                  });
                }),
            RadioListTile(
                title: Text("Select option Three"),
                value: MyOption.option3,
                groupValue: myOption,
                onChanged: (value) {
                  setState(() {
                    myOption = value!;
                  });
                })
          ],
        ),
      ),
    );
  }
}

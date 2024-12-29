import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({super.key});

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool _isCheckbox1 = false;
  bool _isCheckbox2 = false;
  bool _isCheckbox3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("CheckBox List Tile"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              secondary: Icon(Icons.add_call),
              title: Text("Enable feature"),
              subtitle: Text("This will enalble selected for feature"),
              value: _isCheckbox1,
              onChanged: (value) {
                setState(() {
                  _isCheckbox1 = value ?? false;
                });
              }),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: Text("add setting feature"),
              subtitle: Text("slected this feature to add the setting"),
              secondary: Icon(Icons.settings),
              value: _isCheckbox2,
              onChanged: (value) {
                setState(() {
                  _isCheckbox2 = value ?? false;
                });
              }),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
              title: Text("add profile"),
              subtitle: Text("slected this feature to add the profile"),
              secondary: Icon(Icons.photo),
              value: _isCheckbox3,
              onChanged: (value) {
                setState(() {
                  _isCheckbox3 = value ?? false;
                });
              })
        ],
      ),
    );
  }
}

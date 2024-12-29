import 'package:flutter/material.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({super.key});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  bool _isCheckbox1 = false;
  bool _isCheckbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                isDismissible: true,
                enableDrag: false,
                backgroundColor: Colors.amberAccent,
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CheckboxListTile(
                          secondary: Icon(Icons.add_call),
                          title: Text("Enable feature"),
                          subtitle:
                              Text("This will enalble selected for feature"),
                          value: _isCheckbox1,
                          onChanged: (value) {
                            setState(() {
                              _isCheckbox1 = value ?? false;
                            });
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      CheckboxListTile(
                          title: Text("add setting feature"),
                          subtitle:
                              Text("slected this feature to add the setting"),
                          secondary: Icon(Icons.settings),
                          value: _isCheckbox2,
                          onChanged: (value) {
                            setState(() {
                              _isCheckbox2 = value ?? false;
                            });
                          }),
                    ],
                  );
                });
          },
          child: Text("Show")),
    ));
  }
}

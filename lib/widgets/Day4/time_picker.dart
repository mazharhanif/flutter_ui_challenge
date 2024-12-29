import 'package:flutter/material.dart';

class TimePickerWidget extends StatelessWidget {
  const TimePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Show Time Picker",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? timePicker = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      initialEntryMode: TimePickerEntryMode.input);
                  if (timePicker != null) {
                    print(
                        'show timepicker:${timePicker.hour}:${timePicker.minute}:${timePicker.period}');
                  }
                },
                child: Text("show"))
          ],
        ),
      ),
    );
  }
}

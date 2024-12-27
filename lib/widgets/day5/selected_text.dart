import 'package:flutter/material.dart';

class SelectedTextWidget extends StatelessWidget {
  const SelectedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Selectable Text"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SelectableText(
          "The moon drips silver onto the restless sea, each wave a whisper of forgotten dreams"
          "Beneath the old oak, shadows weave their quiet stories in the folds of moonlit grass."
          "The sky, bruised with twilight hues, folds its arms around the sleeping earth."
          "Rain tattoos the rooftops with a melody only the lonely seem to hear.",
        ),
      ),
    );
  }
}

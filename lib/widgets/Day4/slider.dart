import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  RangeValues values = RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Slider"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSlider(
                  max: 100,
                  min: 0,
                  divisions: 100,
                  labels: labels,
                  values: values,
                  onChanged: (newValue) {
                    values = newValue;

                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}

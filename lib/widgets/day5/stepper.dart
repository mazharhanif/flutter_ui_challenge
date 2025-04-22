import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentStep = 1;

  void _onStepContinue() {
    if (currentStep < gitStep.length - 1) {
      setState(() {
        currentStep++;
      });
    }
  }

  void _onStepCancel() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  List<Step> gitStep = [
    Step(
        title: Text("Account"),
        content: Text(
          "Fill the complete account detail",
        ),
        isActive: true),
    Step(
        title: Text("Profile"),
        content: Text("Please fill your profile"),
        isActive: true),
    Step(
        title: Text("Confirm"),
        content: Text("Your detail is Confirm"),
        isActive: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stepper Widget Example'),
        ),
        body: Stepper(
          steps: gitStep,
          onStepCancel: _onStepCancel,
          currentStep: currentStep,
          onStepContinue: _onStepContinue,
          onStepTapped: (int Step) {
            setState(() {
              currentStep = Step;
            });
          },
        ));
  }
}

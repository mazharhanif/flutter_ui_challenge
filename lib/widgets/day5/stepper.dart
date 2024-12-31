import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentStep = 1;

  void _onStepContinue() {
    if (currentStep < getSteps().length - 1) {
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

  List<Step> getSteps() {
    return [
      Step(
          title: Text("Account"),
          content: Text("Enter your account details."),
          isActive: true),
      const Step(
        title: Text("Profile"),
        content: Text("Fill in your profile information."),
        isActive: true,
      ),
      const Step(
        title: Text("Confirm"),
        content: Text("Confirm your details."),
        isActive: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stepper Widget Example'),
      ),
      body: Stepper(
          currentStep: currentStep,
          onStepCancel: _onStepCancel,
          onStepContinue: _onStepContinue,
          onStepTapped: (int step) {
            setState(() {
              currentStep = step;
            });
          },
          steps: getSteps()),
    );
  }
}

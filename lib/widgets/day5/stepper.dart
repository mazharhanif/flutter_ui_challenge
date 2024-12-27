import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 1;
  void _onStepContinue() {
    if (_currentStep < getSteps().length - 1) {
      setState(() {
        _currentStep++;
      });
    }
  }

  void _onStepCancel() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
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
          currentStep: _currentStep,
          onStepCancel: _onStepCancel,
          onStepContinue: _onStepContinue,
          onStepTapped: (int step) {
            setState(() {
              _currentStep = step;
            });
          },
          steps: getSteps()),
    );
  }
}

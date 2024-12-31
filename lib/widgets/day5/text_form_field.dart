import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  var userName = TextEditingController();
  var email = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _loginkey() {
    if (_formKey.currentState!.validate()) {}
  }

  String? _emailValidate(value) {
    if (value!.isEmpty) {
      return "please enter the email";
    }
    RegExp _emailRegEXp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!_emailRegEXp.hasMatch(value)) {
      return "please enter the valid email";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: userName,
                    decoration: InputDecoration(
                        hintText: "Enter userName",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter the username";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                        hintText: "Enter email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(21))),
                    validator: _emailValidate,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _loginkey();
                      });
                    },
                    child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

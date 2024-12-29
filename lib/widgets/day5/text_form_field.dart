import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({super.key});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  var _obscureText = true;
  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  var userNameText = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _loginForm() {
    if (_formKey.currentState!.validate()) {}
  }

  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return "please enter an email";
    }
    RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'please enter an valid email';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: userNameText,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter the user name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "UserName",
                      hintText: "Enter username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blueAccent))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: _validateEmail,
                  controller: emailText,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: "Email",
                      hintText: "Enter Email",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blueAccent))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter the password';
                    }
                    return null;
                  },
                  obscureText: _obscureText,
                  controller: passwordText,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      labelText: "Password",
                      hintText: "Enter password",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(color: Colors.blueAccent))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: _loginForm, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}

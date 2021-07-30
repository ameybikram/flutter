import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key); // constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20, // fontSize shouldn't be explicitally specified
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),

        ),
      ),
    );
  }
}

// hit ctrl + space + down arrow button for hints
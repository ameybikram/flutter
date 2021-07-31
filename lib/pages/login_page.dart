import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key); // constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/images/login_image.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            // for giving space between two childs
            height: 20.0,
            // child: Text('Space'),
          ),
          Text(
            'Welcome',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            // for giving space between two childs
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Username',
                    labelText: 'UserName',
                  ),
                ),
                TextFormField(
                  obscureText: true, // To hide the password
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    labelText: 'Password',
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text('Login'),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print('Hi Amey');
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// hit ctrl + space button for hints
// main axis of row is horizontal axis and cross axis is vertical axis whereas for columns, main axis is vertical axis and cross axis is horizontal axis
// There are two types of fields => form field and text field

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // To make a scrollable view
        child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.cover,
              height: 200, // To give height of image
            ),
            SizedBox(
              // for giving space between two childs
              height: 20.0,
              // child: Text('Space'),
            ),
            Text(
              'Welcome $name',
              style: TextStyle(
                fontSize: 28,
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
                    onChanged: (value) {
                      name = value;
                      setState(
                          () {}); //To call the build methd again and can be used in stateful widget
                    },
                  ),
                  TextFormField(
                    obscureText: true, // To hide the password
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async {
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      // There is no onPressed button in Container as it was in case of ElevatedButton hence there will be no clickable button. So to make any widget clickable we can wrap the unclickable widget by using gesturedetector or inkwell(recommended).
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text('Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        // shape: changeButton
                        //     ? BoxShape.circle
                        //     : BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 0),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   child: Text('Login'),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: () {
                  //     // print('Hi Amey');
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// hit ctrl + space button for hints
// main axis of row is horizontal axis and cross axis is vertical axis whereas for columns, main axis is vertical axis and cross axis is horizontal axis
// There are two types of fields => form field and text field

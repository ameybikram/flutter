import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // context is a piece of information about the positions of all the widgets
    // bool isMale = true;
    // num temp = 30.5; //num takes both int as well as double
    // var day = "Tuesday"; // We can assign any data type only at the time of initialization
    // const pi = 3.14; // cannnot be reassigned
    // double daysInDouble = 30;
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.dark, // dark color brightness will override red
        primarySwatch: Colors.red,
      ),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(), // meaning home routes
        "/home": (context) => HomePage(), // object of class HomePage
      },
    );
  }
}

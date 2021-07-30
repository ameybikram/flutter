import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Code";
  @override
  Widget build(BuildContext context) {
    // build method is returning a widget type component
    bringVegetables(thaila: true, rupees: 50);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ), // App header
      body: Center(
        child: Container(
          child: Text('Welcome to $days of flutter by $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }

  // bringVegetables({bool thaila, int rupees = 100})  // We have to specify default values for optional paramters
  bringVegetables({required bool thaila, int rupees = 100}) {
    
  }
  // bringVegetables({int rupees = 100}) { // for default parameters we will declare inside curly braces

  // }
}
// difference between methods and functions are that functions inside the class are methods and outside the class are called functions 

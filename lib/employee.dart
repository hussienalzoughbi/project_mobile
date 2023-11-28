import 'package:flutter/material.dart';
import 'package:hussien/details.dart';

void main() {
  runApp(MyApp());
}

class Employee {
  String name;
  double salary;
  Employee({
    required this.name,
    required this.salary,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payroll Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: EnterDetailsScreen(),
    );
  }
}

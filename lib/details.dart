import 'package:flutter/material.dart';
import 'package:hussien/employee.dart';
import 'package:hussien/payroll.dart';

class EnterDetailsScreen extends StatefulWidget {
  @override
  _EnterDetailsScreenState createState() => _EnterDetailsScreenState();
}

class _EnterDetailsScreenState extends State<EnterDetailsScreen> {
  final _nameController = TextEditingController();
  final _salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Employee Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Employee Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _salaryController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Employee Salary'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PayrollSummaryScreen(
                      employee: Employee(
                        name: _nameController.text,
                        salary: double.parse(_salaryController.text),
                      ),
                    ),
                  ),
                );
              },
              child: Text('Calculate Payroll'),
            ),
          ],
        ),
      ),
    );
  }
}

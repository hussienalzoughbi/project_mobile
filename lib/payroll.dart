import 'package:flutter/material.dart';
import '../employee.dart';

class PayrollSummaryScreen extends StatelessWidget {
  final Employee employee;

  PayrollSummaryScreen({required this.employee});

  @override
  Widget build(BuildContext context) {
    double tax = 0.0;
    if (employee.salary <= 50000) {
      tax = 0.05 * employee.salary;
    } else if (employee.salary <= 100000) {
      tax = 0.1 * employee.salary;
    } else {
      tax = 0.2 * employee.salary;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Payroll Summary'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Employee Name: ${employee.name}'),
            Text('Employee Salary: \$${employee.salary}'),
            Text('Tax Deduction: \$${tax}'),
            Text('Net Salary: \$${(employee.salary - tax)}'),
          ],
        ),
      ),
    );
  }
}

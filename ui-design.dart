import 'package:flutter/material.dart';

void main() {
  runApp(EmployeeApp());
}

class EmployeeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AddEmployeeScreen(),
    );
  }
}

class AddEmployeeScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9EDF7), // হালকা গোলাপি ব্যাকগ্রাউন্ড
      appBar: AppBar(
        title: Text('Add Employe'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Name Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: UnderlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),

              // Age Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),

              // Salary Field
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Salary',
                  border: UnderlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 32),

              // Add Employee Button
              ElevatedButton(
                onPressed: () {
                  // Handle form submission here
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Employee Added')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[100],
                  foregroundColor: Colors.purple,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  elevation: 0,
                ),
                child: Text('Add Employee'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

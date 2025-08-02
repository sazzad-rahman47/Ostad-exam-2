import 'package:flutter/material.dart';

void main() => runApp(GreetingApp());

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: GreetingScreen(),
      ),
    );
  }
}

class GreetingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Welcome to Flutter!',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/fff.png',
            width: 150,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Button Pressed!')),
              );
            },
            child: Text('Press Me'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'الدولار المباشر',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Home(),
      ),
    );
  }
}

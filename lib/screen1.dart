import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Home',
            style: (TextStyle(fontSize: 30)),
          ),
        ),
      ),
    );
  }
}

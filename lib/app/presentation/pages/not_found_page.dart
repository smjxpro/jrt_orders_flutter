import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  static const routeName = '/not-found';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Not Found",
          style: TextStyle(color: Colors.red, fontSize: 24),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class OrderListPage extends StatelessWidget {
  static const routeName = "/order-list";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
      ),
      body: Center(
        child: Text("List of orders goes here"),
      ),
    );
  }
}

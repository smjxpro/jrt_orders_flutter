import 'package:flutter/material.dart';
import 'package:orders/app/domain/entities/order.dart';

class OrderDetailsPage extends StatelessWidget {
  static const routeName = '/order-details';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Order?;

    return Scaffold(
      body: Center(
        child: Text('${args!.customerName}'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:orders/app/presentation/pages/order_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orders',
      routes: {
        OrderListPage.routeName: (BuildContext context) => OrderListPage(),
      },
      initialRoute: OrderListPage.routeName,
    );
  }
}

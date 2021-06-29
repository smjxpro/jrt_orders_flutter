import 'package:flutter/material.dart';
import 'package:orders/app/_themes/app_theme.dart';
import 'package:orders/app/presentation/pages/about_page.dart';
import 'package:orders/app/presentation/pages/not_found_page.dart';
import 'package:orders/app/presentation/pages/order_details_page.dart';
import 'package:orders/app/presentation/pages/order_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Orders App',
      theme: AppTheme.lightTheme,
      routes: {
        NotFoundPage.routeName: (BuildContext context) => NotFoundPage(),
        OrderListPage.routeName: (BuildContext context) => OrderListPage(),
        OrderDetailsPage.routeName: (BuildContext context) =>
            OrderDetailsPage(),
        AboutPage.routeName: (BuildContext context) => AboutPage(),
      },
      initialRoute: OrderListPage.routeName,
    );
  }
}

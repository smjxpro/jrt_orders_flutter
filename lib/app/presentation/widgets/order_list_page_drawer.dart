import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orders/app/presentation/pages/about_page.dart';

class OrderListPageDrawer extends StatelessWidget {
  const OrderListPageDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Icon(
                  Icons.shopping_bag,
                  size: 96,
                ),
                Expanded(
                  child: Text(
                    'Orders App',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('About'),
            onTap: () {
              Navigator.of(context).pushNamed(AboutPage.routeName);
            },
          )
        ],
      ),
    );
  }
}

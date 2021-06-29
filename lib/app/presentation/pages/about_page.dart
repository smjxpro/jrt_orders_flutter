import 'package:flutter/material.dart';
import 'package:orders/app/_utls/utils.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about-page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.shopping_bag,
              size: 128,
            ),
            Text(
              'Orders App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Developed by'),
            ),
            TextButton(
              onPressed: () {
                Utils.launchURL('https://github.com/smjxpro');
              },
              child: Text('S. M. JAHANGIR'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Utils.launchURL('https://smj.xyz/');
                  },
                  child: Column(
                    children: [
                      Icon(Icons.link),
                      Text('Web'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Utils.launchURL('https://github.com/smjxpro');
                  },
                  child: Column(
                    children: [
                      Icon(Icons.link),
                      Text('GitHub'),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Utils.launchURL('https://linkedin.com/in/smjxpro');
                  },
                  child: Column(
                    children: [
                      Icon(Icons.link),
                      Text('LinkedIn'),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
